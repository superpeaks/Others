### Stacks: LIFO (Last In First Out) Structure

A **stack** is a linear data structure that follows the **LIFO** (Last-In, First-Out) principle. Think of it like a stack of plates: you can only add a new plate to the top, and you can only take the top plate off. The last plate you put on is the first one you'll take off.

The primary operations for a stack are:

  * **Push**: Adds an element to the top of the stack.
  * **Pop**: Removes and returns the top element of the stack.
  * **Peek (or Top)**: Returns the top element without removing it.
  * **isEmpty**: Checks if the stack is empty.

-----

### Implementation using Python

In Python, you can easily implement a stack using a list or a linked list. The list-based implementation is often more straightforward and efficient for many use cases.

#### **Using a List (Dynamic Array)**

Python's built-in `list` can be used as a stack because its `append()` and `pop()` methods have a time complexity of **amortized $O(1)$**, which is ideal for stack operations.

**Example**:

```python
stack = []
stack.append('A')  # Push operation
stack.append('B')
stack.append('C')

print(stack)         # Output: ['A', 'B', 'C']

top_element = stack.pop() # Pop operation
print(top_element)   # Output: 'C'
print(stack)         # Output: ['A', 'B']

top_element = stack[-1]   # Peek operation
print(top_element)   # Output: 'B'
```

#### **Using a Linked List**

A linked list implementation involves maintaining a `head` pointer that acts as the top of the stack. Pushing and popping elements happen at the head, which provides a consistent **$O(1)$** time complexity for both operations.

**Example**:

```python
class Node:
    def __init__(self, data):
        self.data = data
        self.next = None

class Stack:
    def __init__(self):
        self.head = None

    def push(self, data):
        new_node = Node(data)
        new_node.next = self.head
        self.head = new_node

    def pop(self):
        if self.is_empty():
            return None
        popped = self.head.data
        self.head = self.head.next
        return popped

    def is_empty(self):
        return self.head is None

    def peek(self):
        if self.is_empty():
            return None
        return self.head.data
```

-----

### Common Problems

Stacks are essential for solving problems that require backtracking or maintaining order.

#### **Balancing Parentheses**

This is a classic use case for a stack. The goal is to determine if a string containing parentheses `()`, brackets `[]`, and braces `{}` is "balanced" (i.e., every opening bracket has a corresponding closing bracket of the same type in the correct order).

**Algorithm**:

1.  Initialize an empty stack.
2.  Iterate through the string.
3.  If a character is an **opening bracket**, push it onto the stack.
4.  If a character is a **closing bracket**, check the stack:
      * If the stack is empty, it's an unbalanced string.
      * If the top element of the stack matches the current closing bracket, pop the top element.
      * If they don't match, it's an unbalanced string.
5.  After iterating through the entire string, the stack should be empty for the string to be balanced.

**Example**:
`"{[()]}"` is balanced, while `"{[(])}"` is not.

#### **Expression Evaluation**

Stacks are used to convert infix expressions (like `2 + 3 * 4`) to postfix or prefix and then evaluate them.

**Example**: Evaluating a postfix expression `2 3 4 * +`:

1.  Initialize an empty stack.
2.  Iterate through the expression.
3.  If the element is a **number**, push it onto the stack.
4.  If the element is an **operator** (`+`, `-`, `*`, `/`), pop the top two operands from the stack, perform the operation, and push the result back onto the stack.
5.  The final result will be the only element left on the stack.
    The final result of `2 3 4 * +` is `14` because `3 * 4 = 12`, then `2 + 12 = 14`.