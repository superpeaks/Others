### Heaps: Min-Heap and Max-Heap

A **heap** is a specialized tree-based data structure that satisfies the **heap property**. It is a **complete binary tree**, meaning all levels are fully filled, except possibly the last level, which is filled from left to right. This structure makes it ideal for implementing **priority queues**.

There are two main types of heaps:

1.  **Min-heap**: In a min-heap, for any given node, its value is **less than or equal to** the values of its children. The smallest element is always at the root of the tree.

2.  **Max-heap**: In a max-heap, for any given node, its value is **greater than or equal to** the values of its children. The largest element is always at the root of the tree.

Heaps are most commonly implemented using a simple **array or list**, where the relationships between parent and child nodes are calculated based on their indices. For a node at index `i`:

  * Its left child is at index `2*i + 1`.
  * Its right child is at index `2*i + 2`.
  * Its parent is at index `(i-1) // 2`.

-----

### Operations

#### **1. Insert**

To insert a new element into a heap:

1.  Place the new element at the **end** of the array to maintain the complete binary tree property.
2.  Then, perform a **"heapify-up"** (or `sift-up`) operation. This involves comparing the new element with its parent and swapping them if the heap property is violated. This process continues up the tree until the new element is in its correct position.

<!-- end list -->

  * **Time Complexity**: $O(\\log n)$

#### **2. Delete**

Deletion in a heap usually refers to deleting the root element (the minimum in a min-heap or maximum in a max-heap), which has the highest or lowest priority.

1.  Swap the root element with the **last element** in the array.
2.  Remove the last element (which is now the old root).
3.  Perform a **"heapify-down"** (or `sift-down`) operation. This involves comparing the new root with its children and swapping it with the smallest (for a min-heap) or largest (for a max-heap) child if the heap property is violated. This process continues down the tree until the new root is in its correct position.

<!-- end list -->

  * **Time Complexity**: $O(\\log n)$

#### **3. Heapify**

The **`heapify`** operation converts an arbitrary array into a valid heap. The most efficient way is to build the heap **bottom-up**: start from the last parent node and work your way up to the root, performing a `sift-down` on each node.

  * **Time Complexity**: $O(n)$

-----

### Priority Queue Implementation using Heaps

A **priority queue** is an abstract data type where each element has a priority, and elements are dequeued based on their priority. The heap data structure is the most common and efficient way to implement a priority queue because it provides fast access to the highest-priority element (the root).

#### **Python's `heapq` Module**

Python's `heapq` module is a built-in library that implements a **min-heap**. It does not have a separate heap data structure; instead, it uses a standard Python list and provides functions to treat it as a heap.

#### **Python Code Example**

```python
import heapq

# Create an empty list
min_heap = []

# Insert (push) elements into the min-heap
# heapq.heappush(heap, item) maintains the heap property.
heapq.heappush(min_heap, 4)
heapq.heappush(min_heap, 1)
heapq.heappush(min_heap, 7)
heapq.heappush(min_heap, 3)

print(f"Heap after insertions: {min_heap}")  # Output: [1, 3, 7, 4]
# The list itself is not visually a tree, but it satisfies the heap property.
# The smallest element is always at index 0.

# Peek at the smallest element (the root)
print(f"Smallest element (peek): {min_heap[0]}") # Output: 1

# Delete (pop) the smallest element
# heapq.heappop(heap) removes and returns the smallest item.
popped_item = heapq.heappop(min_heap)
print(f"Popped smallest item: {popped_item}") # Output: 1
print(f"Heap after pop: {min_heap}")          # Output: [3, 4, 7]

# Heapify an existing list
data = [10, 2, 8, 5, 12]
heapq.heapify(data)
print(f"Heapified list: {data}")              # Output: [2, 5, 8, 10, 12]

# To implement a max-heap, you can store elements as their negative.
max_heap = []
heapq.heappush(max_heap, -4)
heapq.heappush(max_heap, -1)
heapq.heappush(max_heap, -7)
print(f"Max-heap (stored as negatives): {max_heap}") # Output: [-7, -4, -1]
print(f"Max element is: {-max_heap[0]}")
```