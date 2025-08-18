### String Manipulation Techniques

Strings in Python are **immutable**, meaning they cannot be changed after creation. All "manipulation" techniques, such as slicing or concatenation, actually create a new string.

-----

#### **Slicing**

Slicing allows you to extract a substring from a string. The syntax is `string[start:stop:step]`.

  * `start`: The starting index (inclusive).
  * `stop`: The ending index (exclusive).
  * `step`: The number of characters to skip.

**Examples:**

```python
s = "hello world"
print(s[0:5])      # Output: "hello" (from index 0 to 4)
print(s[6:])       # Output: "world" (from index 6 to the end)
print(s[:5])       # Output: "hello" (from the beginning to index 4)
print(s[::-1])     # Output: "dlrow olleh" (reverses the string)
```

-----

#### **Concatenation**

Concatenation combines two or more strings into a new one. The `+` operator is the most common way to do this. For more complex or performance-critical tasks, especially when building a string from many smaller pieces, the `join()` method is more efficient.

**Examples:**

```python
s1 = "hello"
s2 = "world"
s3 = s1 + " " + s2
print(s3)         # Output: "hello world"

# Using join() for efficiency with a list of strings
words = ["hello", "world", "from", "Python"]
sentence = " ".join(words)
print(sentence)   # Output: "hello world from Python"
```

-----

#### **Searching**

Python provides several methods for finding substrings.

  * `in` operator: Returns `True` or `False` if a substring exists.
  * `find()`: Returns the starting index of the first occurrence. Returns `-1` if not found.
  * `count()`: Returns the number of non-overlapping occurrences of a substring.

**Examples:**

```python
s = "hello world"
print("world" in s)    # Output: True
print(s.find("world")) # Output: 6
print(s.count("o"))    # Output: 2
```

-----

### String Searching Algorithms

While Python's built-in methods are highly optimized, it's essential for a DSA interview to understand the underlying algorithms.

#### **Naive String Searching**

This is the simplest approach. It involves checking for a match at every possible starting position in the main string.

**Time Complexity:** $O(m \\times n)$, where $m$ is the length of the pattern and $n$ is the length of the main string. This is because in the worst-case scenario (e.g., `s = "aaaaa", p = "aaab"`), the algorithm performs a character-by-character comparison multiple times.

#### **Knuth-Morris-Pratt (KMP) Algorithm**

KMP is an advanced algorithm that significantly improves search time by pre-processing the pattern to avoid redundant comparisons. It uses a **Longest Proper Prefix which is also Suffix (LPS) array** to efficiently skip ahead when a mismatch occurs. The LPS array stores the length of the longest proper prefix of the pattern that is also a suffix.

**Time Complexity:** $O(m+n)$. KMP achieves this by never re-examining a character in the main string.

**Key idea:** When a mismatch occurs at index `j` in the pattern, instead of shifting the pattern by just one position, KMP uses the LPS array to determine the next position to check, based on how much of the pattern has already matched.

-----

### Python-Specific String Methods

Python's `str` class has a rich set of built-in methods that are crucial for solving coding problems efficiently.

  * **Case Conversion**:

      * `s.lower()`: Returns a copy of the string in lowercase.
      * `s.upper()`: Returns a copy in uppercase.
      * `s.capitalize()`: Returns a copy with the first character capitalized.

  * **Stripping Whitespace**:

      * `s.strip()`: Returns a copy with leading and trailing whitespace removed.
      * `s.lstrip()`: Removes leading whitespace only.
      * `s.rstrip()`: Removes trailing whitespace only.

  * **Splitting and Joining**:

      * `s.split(separator)`: Splits the string into a list of substrings based on a separator.
      * `separator.join(list_of_strings)`: Joins the elements of an iterable (e.g., a list) into a single string using the separator.

  * **Checking Properties**:

      * `s.isdigit()`: Returns `True` if all characters in the string are digits.
      * `s.isalpha()`: Returns `True` if all characters are alphabetic.
      * `s.startswith(prefix)`: Checks if the string begins with a specific prefix.
      * `s.endswith(suffix)`: Checks if the string ends with a specific suffix.

**Examples:**

```python
s = "   Hello, World!   "
print(s.strip())          # Output: "Hello, World!"
print(s.lower())          # Output: "   hello, world!   "

s = "apple,banana,cherry"
fruits = s.split(',')
print(fruits)             # Output: ['apple', 'banana', 'cherry']
```