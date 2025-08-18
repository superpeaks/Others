### Graphs

A **graph** is a non-linear data structure consisting of **nodes** (or vertices) and **edges**. The edges connect pairs of nodes. Graphs can model a wide variety of real-world relationships, such as social networks, transportation systems, and computer networks.

There are two main types of graphs:

  * **Undirected Graphs**: Edges have no direction. If an edge connects node A to B, you can traverse from A to B and from B to A.
  * **Directed Graphs**: Edges have a specific direction. You can only traverse an edge in the specified direction.

\<br\>

-----

### Representation of Graphs

How a graph is stored in memory is crucial for the efficiency of algorithms. The two most common representations are the adjacency matrix and the adjacency list.

#### **Adjacency Matrix**

An **adjacency matrix** is a 2D array where `matrix[i][j]` stores information about the edge between node `i` and node `j`. For an unweighted graph, a `1` indicates an edge, and a `0` indicates no edge. For a weighted graph, the matrix stores the weight of the edge.

  * **Space Complexity**: $O(V^2)$, where $V$ is the number of vertices. This can be inefficient for sparse graphs (graphs with few edges).
  * **Time Complexity**: Checking for an edge between two nodes is $O(1)$.

#### **Adjacency List**

An **adjacency list** is a more memory-efficient representation for sparse graphs. It uses an array of lists (or a dictionary in Python), where the array index (or dictionary key) represents a node, and the corresponding list contains all its neighboring nodes.

  * **Space Complexity**: $O(V + E)$, where $E$ is the number of edges.
  * **Time Complexity**: Checking for an edge between two nodes can be $O(k)$, where $k$ is the number of neighbors. Iterating through a node's neighbors is very efficient.

#### **Python Code Example**

```python
# Adjacency List using a dictionary
graph_adj_list = {
    'A': ['B', 'C'],
    'B': ['A', 'D'],
    'C': ['A'],
    'D': ['B']
}

# Adjacency Matrix
# This represents the same graph as above, with A=0, B=1, C=2, D=3
graph_adj_matrix = [
    [0, 1, 1, 0],
    [1, 0, 0, 1],
    [1, 0, 0, 0],
    [0, 1, 0, 0]
]
```

\<br\>

-----

### Graph Traversal Algorithms

These algorithms are used to visit every node in a graph.

#### **BFS (Breadth-First Search)**

BFS explores the graph layer by layer. It uses a **queue** to keep track of the next nodes to visit. It starts at a given source node, visits all its neighbors, then all their neighbors, and so on. BFS is often used to find the shortest path in an **unweighted** graph.

#### **DFS (Depth-First Search)**

DFS explores as far as possible along each branch before backtracking. It uses a **stack** (or recursion, which uses the call stack) to keep track of the path. DFS is commonly used for pathfinding, cycle detection, and topological sorting.

#### **Python Code Example**

```python
from collections import deque

def bfs(graph, start):
    visited = set()
    queue = deque([start])
    visited.add(start)

    while queue:
        vertex = queue.popleft()
        print(vertex, end=" ")
        for neighbor in graph[vertex]:
            if neighbor not in visited:
                visited.add(neighbor)
                queue.append(neighbor)

def dfs(graph, start, visited=None):
    if visited is None:
        visited = set()
    visited.add(start)
    print(start, end=" ")
    for neighbor in graph[start]:
        if neighbor not in visited:
            dfs(graph, neighbor, visited)

# Using the adjacency list from the previous example
print("BFS Traversal:")
bfs(graph_adj_list, 'A') # Output: A B C D
print("\nDFS Traversal:")
dfs(graph_adj_list, 'A') # Output: A B D C
```

\<br\>

-----

### Shortest Path Algorithms

#### **Dijkstra’s Algorithm**

Dijkstra's algorithm finds the shortest path from a single source node to all other nodes in a graph with **non-negative** edge weights. It uses a **min-priority queue** to greedily select the next node with the smallest known distance from the source.

#### **Bellman-Ford Algorithm**

The Bellman-Ford algorithm finds the shortest path from a single source node to all other nodes in a graph that can have **negative** edge weights. It can also detect if there is a negative cycle, which would make the shortest path undefined. It is less efficient than Dijkstra's but more robust for negative weights.

\<br\>

-----

### Other Graph Algorithms

#### **Topological Sort**

A **topological sort** is a linear ordering of nodes in a directed acyclic graph (DAG) such that for every directed edge from node `u` to node `v`, `u` comes before `v` in the ordering. It is used in task scheduling and dependency resolution.

#### **Minimum Spanning Tree**

A **Minimum Spanning Tree (MST)** is a subgraph of a connected, undirected, weighted graph that connects all the vertices together, without any cycles, and with the minimum possible total edge weight.

  * **Prim’s Algorithm**: Builds the MST by starting from an arbitrary node and growing the tree one edge at a time, always adding the minimum-weight edge that connects a node in the tree to a node outside the tree. It uses a **min-priority queue**.
  * **Kruskal’s Algorithm**: Builds the MST by adding the minimum-weight edges one by one, as long as they don't form a cycle. It uses a **disjoint set data structure** to efficiently detect cycles.





### Step 1: Master Python Fundamentals
Before you can effectively learn DSA, you must be comfortable with Python itself. This phase is crucial and should not be rushed.
* **Syntax and Data Types**: Get a firm grasp of Python's basic data types: `int`, `float`, `str`, `list`, `tuple`, `dict`, and `set`. Practice their methods and understand when to use each.
* **Control Flow**: Be an expert in `if/else`, `for` loops, `while` loops, and list comprehensions.
* **Functions**: Learn how to define functions, pass arguments (positional, keyword), and use `return`.
* **Basic OOP**: Understand the concepts of classes, objects, and methods. You'll need this for implementing data structures like linked lists from scratch.
* **Time and Space Complexity**: Learn Big-O notation. This is the language of DSA. Without it, you won't be able to evaluate the efficiency of your code. You must be able to analyze simple loops and functions.

---

### Step 2: Grasp Core Data Structures
This is the heart of your study. Focus on one data structure at a time, and for each, follow this pattern:
1.  **Understand the Concept**: Learn the fundamental idea behind the data structure.
2.  **Learn the Operations**: Know the common operations and their time complexity.
3.  **Implement from Scratch**: Write the code yourself to fully understand how it works.
4.  **Solve Problems**: Start with easy problems on platforms like LeetCode.

Here's the order you should follow:

#### **Arrays and Strings**
* **Concepts**: Python's `list` and `str` types. Understand they're contiguous blocks of memory (conceptually).
* **Techniques**: Two-pointer approach, sliding window, prefix sums. These techniques are often used to optimize array and string problems.
* **Examples**: Find a pair with a given sum, reverse a string, check for anagrams.

#### **Linked Lists**
* **Concepts**: Nodes with data and a `next` pointer. Learn about singly and doubly linked lists.
* **Operations**: Insertion at beginning/end, deletion, traversal. Know their time complexities ($O(1)$ or $O(n)$).
* **Examples**: Reverse a linked list, detect a cycle, find the middle element.

#### **Stacks and Queues**
* **Concepts**: **Stack** (LIFO) and **Queue** (FIFO). Understand their primary operations (`push/pop` and `enqueue/dequeue`).
* **Implementation**: Use Python's `list` for a stack and `collections.deque` for a queue.
* **Examples**: Validating parentheses (stack), Breadth-First Search (queue).

---

### Step 3: Tackle Intermediate Data Structures and Algorithms
Once you're solid on the basics, move to more complex topics that are frequently asked in interviews.

#### **Hash Tables**
* **Concepts**: Understand the idea of a **hash function** and **collision resolution** (chaining vs. open addressing).
* **Python's `dict` and `set`**: Know that these are implemented as hash tables and provide average $O(1)$ operations.
* **Examples**: Two Sum problem, finding duplicate elements, counting frequencies.

#### **Trees**
* **Concepts**: Binary Tree, Binary Search Tree (BST). Understand the BST property.
* **Traversals**: Master **in-order**, **pre-order**, and **post-order** traversals, both recursively and iteratively.
* **Examples**: Validate a BST, find the height of a tree, find the lowest common ancestor.

#### **Heaps**
* **Concepts**: **Min-heap** and **max-heap**. Understand the heap property and how it relates to priority.
* **Implementation**: Use Python's `heapq` module.
* **Examples**: Kth largest element in a stream, merging k sorted lists.

---

### Step 4: Master Advanced Algorithms
These are often the difference between a good and great candidate.

#### **Graphs**
* **Representations**: Adjacency list and adjacency matrix. Know when to use each.
* **Traversals**: Master **BFS** (using a queue) and **DFS** (using recursion or a stack).
* **Examples**: Finding a path between two nodes, cycle detection, connected components.

#### **Sorting and Searching**
* **Sorting**: Understand the concepts of **Merge Sort** and **Quick Sort** (their time complexities, and why they're often preferred).
* **Searching**: Be an expert on **Binary Search** and know its prerequisite (sorted data).

#### **Dynamic Programming (DP)**
* **Concepts**: Learn the principles of **overlapping subproblems** and **optimal substructure**.
* **Techniques**: Start with memoization (top-down) and then learn tabulation (bottom-up).
* **Examples**: Fibonacci sequence, knapsack problem, coin change.

---

### Step 5: Practice, Practice, Practice!
This is the most important step. Without practice, the knowledge is just theoretical.
* **Platform**: Use **LeetCode** as your primary resource. Go through their "Explore" section or study lists like "Top Interview Questions."
* **Solve Strategically**: Don't just solve problems blindly. Try to identify the data structure or algorithm that fits.
* **Code and Explain**: For every problem, first, explain your thought process out loud. Then, write the code. Finally, analyze the time and space complexity of your solution. This mimics the interview process perfectly.