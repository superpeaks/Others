import os
import shutil
from pathlib import Path
import platform
import time

# Detect the OS
current_os = platform.system()

# Define source and destination paths based on the OS
if current_os == 'Windows':
    # For Windows (F: drive and E: drive as an example)
    src_dir = Path(r'F:\ML')
    dst_dir = Path(r'E:\DATA ANALYTICS\GitHub Repo\My Repo\Others\Python\Data_Science\ML')
elif current_os == 'Linux':
    # For Ubuntu or Linux (assuming you're using WSL or native Ubuntu)
    src_dir = Path('/mnt/f/ML....')  # WSL path for F: drive, adjust if needed
    dst_dir = Path('/home/user/Data_Analytics/ML...')
else:
    raise Exception(f"Unsupported OS: {current_os}")

# Exclude specific files and folders
exclude = {'.venv'}

# Function to copy files and directories recursively
def copy_files(src, dst):
    # Walk through the source directory
    print(f"Copying from {src} to {dst}")
    for root, dirs, files in os.walk(src):
        # Convert root to a Path object for easier manipulation
        root_path = Path(root)

        # Exclude the '.venv' folder and 'copy.py' file from being copied
        dirs[:] = [d for d in dirs if d not in exclude]  # Modify dirs list in-place to exclude folders

        for file in files:
            if file not in exclude:
                # Construct full paths for source and destination
                src_file = root_path / file
                relative_path = src_file.relative_to(src)  # Relative path from source directory
                dst_file = dst / relative_path
                print(f"Path {dst_file}")

                # Create directories in the destination if they don't exist
                dst_file_dir = dst_file.parent
                if not dst_file_dir.exists():
                    dst_file_dir.mkdir(parents=True, exist_ok=True)
                    print(f"Dir {dst_file_dir}")

                # Copy the file only if it is newer or does not exist
                if not dst_file.exists() or src_file.stat().st_mtime > dst_file.stat().st_mtime:
                    shutil.copy2(src_file, dst_file)  # copy2 preserves metadata (timestamps)
                    print(f"Copied: {src_file} -> {dst_file}")
                    print(f"Copying {src_file}")

# Call the function to start copying
copy_files(src_dir, dst_dir)


print("File Operation Completed ...")
time.sleep(10)