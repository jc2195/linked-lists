# Linked Lists
My implementation of a linked list in Ruby for The Odin Project.

## Classes:
1. LinkedList class, which will represent the full list.
2. Node class, containing a #value method and a link to the #next_node, set both as nil by default.

## Methods:
1. #append(value) adds a new node containing value to the end of the list
2. #prepend(value) adds a new node containing value to the start of the list
3. #size returns the total number of nodes in the list
4. #head returns the first node in the list
5. #tail returns the last node in the list
6. #at(index) returns the node at the given index
7. #pop removes the last element from the list
8. #contains?(value) returns true if the passed in value is in the list and otherwise returns false.
9. #find(value) returns the index of the node containing value, or nil if not found.
10. #to_s represents the LinkedList objects as strings, so that they can be printed in the console.
11. #insert_at(value, index) inserts the node with the provided value at the given index
12. #remove_at(index) removes the node at the given index.