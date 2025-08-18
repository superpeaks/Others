### Queues: FIFO (First In First Out) Structure

A **queue** is a linear data structure that follows the **FIFO** (First-In, First-Out) principle. This is similar to a real-world queue of people waiting for a service: the first person to get in line is the first one to be served.

The main operations for a queue are:

  * **Enqueue**: Adds an element to the rear (end) of the queue.
  * **Dequeue**: Removes and returns the element from the front of the queue.
  * **Peek (or Front)**: Returns the front element without removing it.
  * **isEmpty**: Checks if the queue is empty.

-----

### Implementation

While you can implement a queue from scratch using a list or a linked list, Python's `collections.deque` (double-ended queue) is the most efficient and recommended way.

#### **Using a Linked List**

A linked list is a natural choice for a queue, as enqueueing and dequeueing at the ends of the list are **$O(1)$** operations. You maintain two pointers: `head` (or `front`) and `tail` (or `rear`).

**Example**:

```python
class Node:
    def __init__(self, data):
        self.data = data
        self.next = None

class Queue:
    def __init__(self):
        self.front = self.rear = None

    def enqueue(self, data):
        new_node = Node(data)
        if self.rear is None:
            self.front = self.rear = new_node
            return
        self.rear.next = new_node
        self.rear = new_node

    def dequeue(self):
        if self.front is None:
            return None
        dequeued = self.front.data
        self.front = self.front.next
        if self.front is None:
            self.rear = None
        return dequeued
```

This implementation provides consistent $O(1)$ performance for both `enqueue` and `dequeue` operations.

#### **Using `collections.deque`**

This is the fastest implementation of a queue in Python. It's a double-ended queue, meaning you can add and remove elements from both ends with an **$O(1)$** time complexity.

**Example**:

```python
from collections import deque

queue = deque()
queue.append('A')   # Enqueue
queue.append('B')
print(queue)         # Output: deque(['A', 'B'])

front_element = queue.popleft() # Dequeue
print(front_element)   # Output: 'A'
print(queue)         # Output: deque(['B'])

queue.appendleft('C') # Add to the front
print(queue)         # Output: deque(['C', 'B'])
```

-----

### Types of Queues

#### **Circular Queue**

A circular queue is a queue that uses a fixed-size array where the end of the array is connected to the beginning. This allows for efficient use of space by preventing the queue from "running out of room" at the end of the array. When the rear reaches the end, it wraps around to the beginning if there is an empty space. This requires careful management of the `front` and `rear` pointers.

#### **Deque (Double-Ended Queue)**

A Deque, or double-ended queue, is a queue that allows adding and removing elements from **both the front and the rear**. Python's `collections.deque` is a highly optimized implementation of this data structure, offering $O(1)$ time complexity for all of these operations.

-----

### Applications of Queues

Queues are vital for algorithms that process data in a specific order and for managing tasks.

#### **Breadth-First Search (BFS)**

BFS is a graph traversal algorithm that explores all the neighbor nodes at the present depth prior to moving on to the nodes at the next depth level. It uses a **queue** to keep track of the nodes to visit.

**Algorithm**:

1.  Add the starting node to a queue.
2.  While the queue is not empty:
    a. Dequeue a node and visit it.
    b. Enqueue all its unvisited neighbors.

#### **Scheduling Algorithms**

Operating systems use queues to manage processes and tasks.

  * **CPU Scheduling**: Processes waiting for CPU time are often held in a ready queue.
  * **Printer Spooling**: Documents sent to a printer are placed in a queue to be printed in the order they were received.
  * **Web Server Request Handling**: Incoming requests to a web server are put in a queue to be processed one by one.