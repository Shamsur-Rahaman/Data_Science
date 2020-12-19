#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Jun  3 09:19:37 2020

@author: Shamsur Rahaman
"""
list = [1,2,3,4,5,6,7,8,9,10]

list.append(a)
# Add an element at the end of the list

list.insert(i,x)
# Add an element x, in a given position i

list.extend()
# Extend the list by adding all the element from iteration

list.clear()
# Delete all the element of the list

list.copy()
# Return a shallow copy of the list

list.count(x)
# The number of times x appear in the list

list.index(value, [start,[stop]])
# Return zero-based index in the list of the first item whose value is equal to x

list.pop([index])
# Remove an element from the list in a given position index, 
# if no index is given, pop will remove the last element from the list  

list.remove(value)
# Remove an element from the end of the list

list.reverse()
# Reverse the elements of the list

list.sort()
# Sort the elements of the list


# example of list methods

fruits = ['apple','banana','pear','orange','kiwi']

fruits.append("grape")
fruits

fruits.insert(4, "pinapple")
fruits

fruits.clear()
fruits


fruits = ['apple','banana','pear','orange','kiwi']
fruits.copy()
fruits

fruits.index(4, [3,[5]])
fruits

fruits.pop(4)
fruits

fruits.pop()
fruits


fruits = ['apple','banana','pear','orange','kiwi']

fruits.remove("pear")
fruits


fruits = ['apple','banana','pear','orange','kiwi']

fruits.reverse()
fruits

fruits.sort()
fruits

### Using list as Stacks

stack = [3,4,5]
stack.append(6)
stack

print(stack.pop())
stack

print(stack.pop(1))
stack


