### Introduction to Arrays

In Python, the closest equivalent to an array is a **list**. A list is a versatile, ordered, and mutable collection of items. Unlike static arrays in languages like C++ or Java, Python's lists are dynamic, meaning they can change in size. This flexibility comes at a trade-off in performance for certain operations.

#### **Core Concepts**

  * **Ordered Collection**: The elements in a list have a defined order, and this order will not change unless you modify the list.
  * **Mutable**: You can change the elements of a list after it's created. This includes adding, removing, and updating elements.
  * **Heterogeneous**: A single list can hold items of different data types (e.g., integers, strings, and even other lists).

**Example**:

```python
my_list = [1, 'hello', 3.14, True]
print(my_list) # Output: [1, 'hello', 3.14, True]
```

-----

### Basic Operations

#### **Accessing Elements**

Elements in a list are accessed by their **index**. Python uses zero-based indexing, where the first element is at index 0, the second at index 1, and so on. You can also use negative indexing to access elements from the end of the list.

  * `list[i]`: Access the element at index `i`.
  * `list[-1]`: Access the last element.

**Example**:

```python
fruits = ['apple', 'banana', 'cherry']
print(fruits[0])  # Output: apple
print(fruits[2])  # Output: cherry
print(fruits[-1]) # Output: cherry
```

#### **Inserting Elements**

Adding elements to a list can be done in several ways.

  * `list.append(item)`: Adds an item to the **end** of the list.
  * `list.insert(index, item)`: Inserts an item at a **specific index**, shifting subsequent elements to the right.

**Example**:

```python
fruits = ['apple', 'banana']
fruits.append('orange')
print(fruits)      # Output: ['apple', 'banana', 'orange']

fruits.insert(1, 'grape')
print(fruits)      # Output: ['apple', 'grape', 'banana', 'orange']
```

#### **Deleting Elements**

You can remove elements from a list using a few methods.

  * `list.pop(index)`: Removes and returns the item at a specific index. If no index is specified, it removes and returns the last item.
  * `list.remove(item)`: Removes the **first occurrence** of a specific item by value.
  * `del list[index]`: Removes the item at a specific index.

**Example**:

```python
fruits = ['apple', 'banana', 'cherry']
fruits.pop(1)      # Removes 'banana'
print(fruits)      # Output: ['apple', 'cherry']

fruits = ['apple', 'banana', 'cherry']
fruits.remove('cherry')
print(fruits)      # Output: ['apple', 'banana']
```

#### **Updating Elements**

You can change an element by accessing it via its index and assigning a new value.

**Example**:

```python
fruits = ['apple', 'banana', 'cherry']
fruits[1] = 'grape'
print(fruits)      # Output: ['apple', 'grape', 'cherry']
```

-----

### Space and Time Complexity

Understanding the performance of these operations is critical for writing efficient code.

| Operation | Time Complexity | Space Complexity |
| :--- | :--- | :--- |
| **Access/Update** `list[i]` | $O(1)$ | $O(1)$ |
| **Append** `list.append()` | Amortized $O(1)$ | $O(1)$ |
| **Insert** `list.insert()` | $O(n)$ | $O(1)$ |
| **Delete** `list.pop(i)` / `del list[i]` | $O(n)$ | $O(1)$ |
| **Remove by value** `list.remove()` | $O(n)$ | $O(1)$ |
| **Iteration** `for item in list` | $O(n)$ | $O(1)$ |
| **Slicing** `list[i:j]` | $O(k)$, where $k=j-i$ | $O(k)$ |

  * **Accessing/Updating** is $O(1)$ because Python lists are contiguous in memory.
  * **Appending** is "amortized" $O(1)$. When a list runs out of space, it allocates a new, larger block of memory and copies all elements over. While this is a slow $O(n)$ operation, it happens infrequently enough that the average time complexity is considered constant.
  * **Inserting** or **deleting** in the middle of a list is $O(n)$ because all subsequent elements must be shifted.

-----

### Multi-Dimensional Arrays

A multi-dimensional array, often called a matrix, is a list of lists in Python. This structure is used to represent data with rows and columns, such as a spreadsheet or a grid.

**Creating a 2D List**:

```python
matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
]
```

#### **Accessing Elements in a 2D List**

You access elements using two indices: `list[row][column]`.

**Example**:

```python
print(matrix[0][0])  # Output: 1
print(matrix[1][2])  # Output: 6
```

#### **Iterating Through a 2D List**

You can use nested loops to traverse all elements.

**Example**:

```python
for row in matrix:
    for element in row:
        print(element, end=' ')
    print()

# Output:
# 1 2 3
# 4 5 6
# 7 8 9
```

**A common pitfall**: When initializing a multi-dimensional array, be careful not to create a shallow copy.

```python
# Incorrect way (shallow copy)
matrix_incorrect = [[0] * 3] * 3
matrix_incorrect[0][0] = 1
print(matrix_incorrect)
# Output: [[1, 0, 0], [1, 0, 0], [1, 0, 0]]
# All rows point to the same list object.

# Correct way (deep copy)
matrix_correct = [[0 for _ in range(3)] for _ in range(3)]
matrix_correct[0][0] = 1
print(matrix_correct)
# Output: [[1, 0, 0], [0, 0, 0], [0, 0, 0]]
# Each row is a separate list object.
```