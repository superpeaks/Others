### Hashing: Hash Tables, Hash Maps, and Hash Functions

**Hashing** is a technique that uses a **hash function** to map data of arbitrary size to fixed-size values (hash codes or hash values). This allows for efficient data storage and retrieval.

A **hash table** (or **hash map**) is a data structure that implements an associative array (map or dictionary) by using a hash function to map keys to indices in an array of buckets or slots. The goal is to achieve near $O(1)$ average time complexity for insertions, deletions, and lookups.

#### **Hash Function**

A **hash function** takes an input (key) and returns an integer, which is then used as an index in the hash table. A good hash function should:

  * Be **deterministic**: The same input always produces the same output.
  * Be **efficient to compute**.
  * Distribute keys **uniformly** across the hash table to minimize collisions.

**Example (simple hash function)**:

```python
def simple_hash(key, table_size):
    return hash(key) % table_size

# In Python, the built-in `hash()` function provides a good general-purpose hash.
# Dictionaries and sets use optimized hash functions internally.
```

-----

### Collision Resolution Techniques

A **collision** occurs when two different keys hash to the same index in the hash table. Since multiple keys cannot occupy the same slot, strategies are needed to resolve these collisions.

#### **1. Chaining (Separate Chaining)**

In chaining, each slot in the hash table is a pointer to a **linked list** (or another data structure like a dynamic array). When a collision occurs, the new key-value pair is simply added to the linked list at that index.

**Pros**:

  * Simple to implement.
  * Table never fills up (can handle many collisions).
  * Deletion is relatively easy.

**Cons**:

  * Requires extra space for pointers.
  * Can lead to degraded performance (closer to $O(n)$) if too many collisions occur at one index, making the linked list long.

#### **2. Open Addressing**

In open addressing, if a collision occurs, the system probes for another open slot in the same array until an empty slot is found. There are several probing techniques:

  * **Linear Probing**: Searches for the next available slot sequentially (e.g., `index + 1`, `index + 2`, etc.).

      * **Problem**: Can lead to **primary clustering**, where occupied slots form large blocks, making future insertions and searches slower.

  * **Quadratic Probing**: Searches for the next available slot using a quadratic increment (e.g., `index + 1^2`, `index + 2^2`, etc.).

      * **Problem**: Can lead to **secondary clustering**, where keys that hash to the same initial index follow the same probe sequence.

  * **Double Hashing**: Uses a second hash function to determine the step size for probing, providing better distribution.

**Pros**:

  * No extra space needed for pointers.
  * Better cache performance due to locality of reference.

**Cons**:

  * More complex deletion (may require marking a slot as "deleted" instead of truly removing it).
  * Table can fill up, requiring **rehashing** (resizing the table and re-inserting all elements), which is an $O(n)$ operation.
  * Sensitive to load factor (ratio of occupied slots to total slots).

-----

### Applications of Hashing

Hashing is fundamental to many common data structures and algorithms.

#### **Dictionaries (Hash Maps in Python)**

Python's built-in `dict` type is implemented as a hash table. It provides highly efficient key-value storage and retrieval.

**Time Complexity (Average Case)**:

  * **Insertion**: $O(1)$
  * **Deletion**: $O(1)$
  * **Lookup**: $O(1)$

**Time Complexity (Worst Case)**: $O(n)$ (occurs with poor hash functions or pathological data leading to many collisions).

**Example**:

```python
my_dict = {"name": "Alice", "age": 30, "city": "New York"}
print(my_dict["name"])    # Output: Alice (O(1) lookup)
my_dict["job"] = "Engineer" # O(1) insertion
print(my_dict)
```

#### **Sets**

Python's built-in `set` type is implemented using a hash table. Sets store unique, unordered elements and allow for very fast membership testing.

**Time Complexity (Average Case)**:

  * **Insertion**: $O(1)$
  * **Deletion**: $O(1)$
  * **Membership test (`in`)**: $O(1)$

**Time Complexity (Worst Case)**: $O(n)$

**Example**:

```python
my_set = {1, 2, 3, 2, 1} # Duplicate 1 and 2 are automatically removed
print(my_set)         # Output: {1, 2, 3} (order might vary)

print(2 in my_set)    # Output: True (O(1) membership test)
my_set.add(4)         # O(1) insertion
print(my_set)
```

#### **Other Applications**:

  * **Caching**: Hashing is used to quickly store and retrieve cached data.
  * **Database Indexing**: Databases use hash tables for efficient data retrieval.
  * **Cryptographic Hashing**: Used for data integrity checks, digital signatures, and password storage (though these are different from the hash functions used in hash tables and aim for properties like collision resistance).
  * **Symbol Tables in Compilers**: Used to store information about identifiers (variables, functions, etc.).