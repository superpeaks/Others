### Introduction to Linked Lists

A **Linked List** is a fundamental data structure that consists of a sequence of nodes. Unlike an array, elements are not stored at contiguous memory locations. Instead, each **node** contains two parts: the data and a reference (or pointer) to the next node in the sequence.

The first node in the list is called the **head**, and the last node points to `None` (or `null` in other languages), signifying the end of the list.

-----

### Singly Linked List

A **Singly Linked List** is the most basic type of linked list. Each node has a `data` attribute and a `next` pointer that references the next node in the sequence. It's a one-way street; you can only traverse it from the head to the tail.

#### **Implementation from Scratch**

To implement a singly linked list, you need two classes: `Node` and `SinglyLinkedList`.

1.  **`Node` Class**: This class represents a single element in the list.

    ```python
    class Node:
        def __init__(self, data):
            self.data = data
            self.next = None
    ```

2.  **`SinglyLinkedList` Class**: This class manages the list as a whole. It typically holds a reference to the `head` node.

    ```python
    class SinglyLinkedList:
        def __init__(self):
            self.head = None
    ```

-----

### Operations

#### **Traversal**

Traversal involves iterating through the list from the head to the tail. This is done by using a temporary pointer, usually called `current` or `temp`, which starts at the `head` and moves to the `next` node in each step until it becomes `None`.

**Example**:

```python
def traverse(self):
    current = self.head
    while current:
        print(current.data, end=" -> ")
        current = current.next
    print("None")
```

#### **Insertion**

Insertion can happen at the beginning, end, or middle of the list.

  * **At the beginning**: Create a new node, set its `next` pointer to the current `head`, and then update the list's `head` to point to the new node.

      * **Time Complexity**: $O(1)$

  * **At the end**: Traverse the list to find the last node (where `next` is `None`), and then update its `next` pointer to the new node.

      * **Time Complexity**: $O(n)$ because you must traverse the entire list.

  * **In the middle**: Find the node *before* the desired insertion point. Set the new node's `next` pointer to the target node's `next`, and then set the target node's `next` to the new node.

      * **Time Complexity**: $O(n)$ to find the insertion point.

#### **Deletion**

Deletion also requires finding the node to be removed and updating the pointers around it.

  * **At the beginning**: Update the `head` to point to the second node.

      * **Time Complexity**: $O(1)$

  * **At the end or middle**: Traverse to find the node *before* the one you want to delete. Update this node's `next` pointer to skip over the node to be deleted, effectively removing it from the list.

      * **Time Complexity**: $O(n)$ to find the preceding node.

-----

### Common Interview Problems

#### **Reverse a Linked List**

This is a classic interview problem. The goal is to reverse the direction of all the pointers in the list. This can be done iteratively using three pointers: `prev`, `current`, and `next_node`.

**Algorithm**:

1.  Initialize `prev` to `None` and `current` to `head`.
2.  Iterate through the list while `current` is not `None`.
3.  In each iteration, store the `next_node` of `current`.
4.  Reverse the pointer: `current.next = prev`.
5.  Move the pointers one step forward: `prev = current` and `current = next_node`.
6.  Finally, set the list's `head` to `prev`.

#### **Detect a Loop (Cycle)**

A loop exists if a node's `next` pointer points back to a previous node in the list. The most common solution is **Floyd's Tortoise and Hare algorithm**.

**Algorithm**:

1.  Use two pointers, `slow` and `fast`, both starting at the `head`.
2.  `slow` moves one step at a time, while `fast` moves two steps at a time.
3.  If a loop exists, the `fast` pointer will eventually catch up to and meet the `slow` pointer.
4.  If `fast` reaches `None` or its `next` is `None`, there is no loop.

-----

### Doubly Linked List

A **Doubly Linked List** is an extension of a singly linked list. Each node has a `data` attribute, a `next` pointer to the next node, and a `prev` pointer that references the previous node. This allows for traversal in both directions.

#### **Implementation**

The `Node` class now needs a `prev` attribute:

```python
class Node:
    def __init__(self, data):
        self.data = data
        self.next = None
        self.prev = None
```

The `DoublyLinkedList` class works similarly, but operations like insertion and deletion are slightly more complex as you need to update two pointers instead of one. The benefit is that some operations, like deleting from the tail, can be done in $O(1)$ time if you maintain a `tail` pointer.