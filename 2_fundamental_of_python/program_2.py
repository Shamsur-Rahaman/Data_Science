#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sat Dec 19 09:48:46 2020

@author: Shamsur Rahaman
 
# 02_Fundamentals of python
 Topics : list, slicing, tuple, function, package, slicing_array
 
"""

# -----------list -------------
# 1 
mylist = [1,2,3,4,5,6]
print(mylist)
type(mylist)

# 2
l2 = ['hello', 23, True, 3.9]
print(l2)
type(l2)

# 3 
range(0, 15)
l3 = list(range(0, 15))
print(l3)
type(l3)

# 4
range(0, 15)
l3 = list(range(0, 15, 2))
print(l3)
type(l3)

# 5
l4 = ['a','b','c','d','e']
print(len(l4))

# ------ Slicing ----------
l5 = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J']
print(l5[:])
print(l5[1:])
print(l5[2:7])
print(l5[-8:7])
print(l5[-8:-3])
print(l5[2:9:2])
print(l5[::3])
print(l5[::-2])

# ------ Tuple(immutable list) ------------
t = (345,55,142)
a = t[0]
b = t[1]
print(a)
print(b)

# ------ Function ------------
range(10,20)
list1 = list(range(10,20))
print(list1)
print(len(list1))
print(type(list1))
print(max(list1))
print(min(list1))

# ------ Package ----------
# 1
list2 = [1,2,3,4,5]
import numpy as np
na = np.array(list2)
print(na)

# 2 
b = np.array([12,15,'a',True])
print(b)
print(type(b))

# 3
c = list2.pop()
print(c)
print(list2)
print(na.mean())

# --------- Slicing Array -----------
list3 = [14,15,12,1,100]
print(list3)
print(list3[1:])
print(list3[0:2])
print(list3[::2])

array = np.array(list3)
print(array)
print(array[2:])
print(array[2:4])
print(array[:])

































































