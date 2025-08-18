import os
import subprocess
import sys
import json
import logging
import importlib.util

# Configure logging
logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s')

def _is_package_installed(package_name_or_module_name):
    """
    Checks if a Python package's main module is importable.
    Handles packages with extras (e.g., 'nbconvert[webpdf]' -> checks 'nbconvert').
    Also handles cases where package name differs from module name (e.g., 'mdpdf' -> 'markdown_pdf').
    """
    # Normalize package name to module name for import check
    module_name_map = {
        "mdpdf": "markdown_pdf",
        "nbconvert[webpdf]": "nbconvert",
        "playwright": "playwright"
    }
    
    # Try to find the exact module if specified, otherwise map
    module_to_check = module_name_map.get(package_name_or_module_name.split('[')[0].lower(), package_name_or_module_name.split('[')[0])

    try:
        # Try to import the module to definitively check if it's available
        # Using importlib.util.find_spec is generally preferred for a pure check
        # without executing module code immediately.
        spec = importlib.util.find_spec(module_to_check)
        if spec:
            logging.debug(f"Module '{module_to_check}' found (spec).")
            return True
        else:
            logging.debug(f"Module '{module_to_check}' not found (spec).")
            return False
    except ImportError:
        logging.debug(f"Module '{module_to_check}' raised ImportError.")
        return False
    except Exception as e:
        logging.warning(f"Unexpected error checking for module '{module_to_check}': {e}")
        return False


def install_package(package_name):
    """
    Installs a Python package if it's not already installed.
    Returns True if package is installed/install successful and importable, False otherwise.
    """
    if _is_package_installed(package_name):
        logging.info(f"Package '{package_name}' (module '{package_name.split('[')[0]}') is already installed and importable.")
        return True

    logging.info(f"Package '{package_name}' not found or not importable. Attempting to install...")
    try:
        # Use sys.executable to ensure pip operates within the current Python environment
        result = subprocess.run([sys.executable, "-m", "pip", "install", package_name],
                              capture_output=True, text=True, check=True) # check=True will raise CalledProcessError on failure
        
        logging.info(f"Successfully ran 'pip install {package_name}'.")
        # After installation, re-check if the package is now importable
        if _is_package_installed(package_name):
            logging.info(f"Package '{package_name}' (module '{package_name.split('[')[0]}') is now importable.")
            return True
        else:
            logging.error(f"Package '{package_name}' installed, but its module '{package_name.split('[')[0]}' is NOT importable. This might indicate a problem with the installation or environment.")
            logging.error(f"Pip install STDOUT:\n{result.stdout}")
            logging.error(f"Pip install STDERR:\n{result.stderr}")
            return False
    except subprocess.CalledProcessError as e:
        logging.error(f"Failed to install '{package_name}':")
        logging.error(f"Command: {e.cmd}")
        logging.error(f"Return Code: {e.returncode}")
        logging.error(f"STDOUT:\n{e.stdout}")
        logging.error(f"STDERR:\n{e.stderr}")
        return False
    except Exception as e:
        logging.error(f"An unexpected error occurred during installation of '{package_name}': {e}")
        return False

def install_playwright_browser(browser_type="chromium"):
    """
    Installs the specified Playwright browser (e.g., 'chromium', 'firefox', 'webkit').
    Returns True if browser installed/install successful, False otherwise.
    """
    # First, ensure 'playwright' itself is installed for the 'playwright install' command to exist
    if not install_package("playwright"):
        logging.error("Playwright Python package is not installed. Cannot proceed with browser installation.")
        return False

    logging.info(f"Attempting to install Playwright browser: '{browser_type}'...")
    try:
        result = subprocess.run([sys.executable, "-m", "playwright", "install", browser_type],
                              capture_output=True, text=True, check=True)
        logging.info(f"Successfully installed Playwright browser: '{browser_type}'.")
        # logging.debug(f"Playwright install STDOUT:\n{result.stdout}") # Uncomment for verbose output
        return True
    except subprocess.CalledProcessError as e:
        logging.error(f"Failed to install Playwright browser '{browser_type}':")
        logging.error(f"Command: {e.cmd}")
        logging.error(f"Return Code: {e.returncode}")
        logging.error(f"STDOUT:\n{e.stdout}")
        logging.error(f"STDERR:\n{e.stderr}")
        return False
    except FileNotFoundError:
        logging.error("Error: 'playwright' command not found after installing the package. This might indicate a PATH issue or a broken Playwright installation.")
        return False
    except Exception as e:
        logging.error(f"An unexpected error occurred during Playwright browser installation: {e}")
        return False

def ensure_dependencies():
    """Ensures all required Python packages and Playwright browsers are installed."""
    logging.info("--- Starting dependency check and installation ---")
    all_ok = True

    # Critical packages that must be importable
    if not install_package("mdpdf"):
        all_ok = False
        logging.error("mdpdf package installation/import check failed. MD conversion will likely fail.")
    
    if not install_package("nbconvert[webpdf]"):
        all_ok = False
        logging.error("nbconvert[webpdf] package installation/import check failed. IPYNB conversion will likely fail.")

    # Install the browser for nbconvert's webpdf exporter
    # Using 'firefox' as requested, but 'chromium' is generally more reliable for nbconvert
    if all_ok and not install_playwright_browser("firefox"): # Only try if packages installed
        all_ok = False
        logging.warning("Failed to install Playwright Firefox browser. nbconvert webpdf might not work.")
    
    logging.info(f"--- Dependency check and installation finished. All OK: {all_ok} ---")
    return all_ok


# --- Conversion functions ---
# Moved imports inside functions to ensure they are attempted only after dependency checks pass
def convert_md_to_pdf(md_file_path):
    """
    Converts a Markdown file to a PDF using mdpdf.
    Saves the PDF in the same directory as the MD file.
    """
    try:
        from markdown_pdf import Section, MarkdownPdf
    except ImportError:
        logging.error("mdpdf (markdown_pdf module) is not available. Skipping MD conversion for '%s'.", md_file_path)
        return False
    except Exception as e:
        logging.error(f"Unexpected error importing mdpdf components: {e}. Skipping MD conversion for '%s'.", md_file_path)
        return False

    output_pdf_path = os.path.splitext(md_file_path)[0] + ".pdf"
    
    try:
        logging.info(f"Converting Markdown: '{md_file_path}' to '{output_pdf_path}' using mdpdf...")
        with open(md_file_path, 'r', encoding='utf-8') as f:
            markdown_content = f.read()

        pdf = MarkdownPdf()
        pdf.add_section(Section(markdown_content))
        pdf.save(output_pdf_path)
        logging.info(f"Successfully converted '{os.path.basename(md_file_path)}' to PDF.")
        return True
    except Exception as e:
        logging.error(f"Error converting '{os.path.basename(md_file_path)}' to PDF using mdpdf: {e}")
        return False

def convert_ipynb_to_pdf(ipynb_file_path):
    """
    Converts a Jupyter Notebook file to a PDF using nbconvert with webpdf exporter.
    Saves the PDF in the same directory as the IPYNB file.
    """
    try:
        import nbconvert # Just a check to ensure it's there
    except ImportError:
        logging.error("nbconvert module is not available. Skipping IPYNB conversion for '%s'.", ipynb_file_path)
        return False

    output_pdf_path = os.path.splitext(ipynb_file_path)[0] + ".pdf"
    
    try:
        logging.info(f"Converting Jupyter Notebook: '{ipynb_file_path}' to '{output_pdf_path}' using nbconvert (webpdf with Firefox)...")
        
        command = [
            sys.executable, "-m", "jupyter",
            "nbconvert",
            "--to",
            "webpdf",
            ipynb_file_path,
            "--output",
            os.path.splitext(os.path.basename(output_pdf_path))[0],
            "--output-dir",
            os.path.dirname(output_pdf_path) or ".",
            "--webpdf-browser=firefox" # Explicitly request Firefox
        ]
        
        result = subprocess.run(command, check=True, capture_output=True, text=True, encoding='utf-8')
        logging.info(f"Successfully converted '{os.path.basename(ipynb_file_path)}' to PDF.")
        return True
    except subprocess.CalledProcessError as e:
        logging.error(f"Error converting '{os.path.basename(ipynb_file_path)}' to PDF:")
        logging.error(f"Command failed: {' '.join(e.cmd)}")
        logging.error(f"Return Code: {e.returncode}")
        logging.error(f"STDOUT:\n{e.stdout}")
        logging.error(f"STDERR:\n{e.stderr}")
        logging.error("Ensure 'jupyter' command is in your PATH and 'nbconvert[webpdf]' and 'playwright install firefox' are correctly set up.")
        return False
    except FileNotFoundError:
        # This typically means 'jupyter' command wasn't found in PATH, which is less about Python module import
        logging.error("Error: 'jupyter' command not found. This might indicate an issue with Jupyter installation or your system's PATH. Skipping IPYNB conversion for '%s'.", ipynb_file_path)
        return False
    except Exception as e:
        logging.error(f"An unexpected error occurred during ipynb conversion: {e}")
        return False

def process_directory(root_dir):
    """
    Walks through the directory and its subdirectories to find and convert
    .md and .ipynb files to PDF, saving them in the same location.
    """
    for dirpath, dirnames, filenames in os.walk(root_dir):
        logging.info(f"Processing directory: {dirpath}")
        for filename in filenames:
            file_path = os.path.join(dirpath, filename)
            
            if filename.lower().endswith(".md"):
                logging.info(f"Found Markdown file: {file_path}")
                convert_md_to_pdf(file_path)
            elif filename.lower().endswith(".ipynb"):
                logging.info(f"Found Jupyter Notebook file: {file_path}")
                convert_ipynb_to_pdf(file_path)

def create_dummy_files(root_dir):
    """Creates some dummy .md and .ipynb files for testing."""
    os.makedirs(os.path.join(root_dir, "subfolder1"), exist_ok=True)
    os.makedirs(os.path.join(root_dir, "subfolder2", "nested"), exist_ok=True)

    # Dummy MD files
    with open(os.path.join(root_dir, "file1.md"), "w", encoding="utf-8") as f:
        f.write("# Main Markdown File\n\nThis is a test markdown file at the root.")
    with open(os.path.join(root_dir, "subfolder1", "sub_file1.md"), "w", encoding="utf-8") as f:
        f.write("## Subfolder Markdown\n\nAnother test file.")

    # Dummy IPYNB files
    dummy_ipynb_content = {
        "cells": [
            {"cell_type": "markdown", "metadata": {}, "source": ["# My Test Notebook\n\nThis is a sample notebook."]},
            {"cell_type": "code", "execution_count": None, "metadata": {}, "outputs": [], "source": ["print('Hello from the notebook!')"]}
        ],
        "metadata": {"kernelspec": {"display_name": "Python 3", "language": "python", "name": "python3"}},
        "nbformat": 4, "nbformat_minor": 4
    }
    with open(os.path.join(root_dir, "file2.ipynb"), "w", encoding="utf-8") as f:
        json.dump(dummy_ipynb_content, f, indent=4)
    with open(os.path.join(root_dir, "subfolder2", "nested", "nested_file.ipynb"), "w", encoding="utf-8") as f:
        json.dump(dummy_ipynb_content, f, indent=4)

if __name__ == "__main__":
    logging.info("Starting script. Checking and installing dependencies if necessary...")
    if not ensure_dependencies():
        logging.error("Failed to ensure all dependencies are installed. Please check the logs for details.")
        sys.exit(1) # Exit if dependencies cannot be met

    # FIX: Use a raw string for Windows paths to avoid SyntaxWarning
    target_directory = r"D:\GitHub Repo\My Repo\Python" 
    
    # --- For testing: Create dummy files and folders ---
    # Uncomment the line below to create sample files for testing the script
    create_dummy_files(target_directory)
    logging.info(f"Dummy files created in '{os.path.abspath(target_directory)}'.")
    # ---------------------------------------------------

    if not os.path.isdir(target_directory):
        logging.warning(f"Target directory '{target_directory}' does not exist. Creating it...")
        os.makedirs(target_directory, exist_ok=True) 
        logging.info(f"Created target directory: {target_directory}")
    
    logging.info(f"Starting conversion process in '{os.path.abspath(target_directory)}'...")
    process_directory(target_directory)
    logging.info("Conversion process completed.")