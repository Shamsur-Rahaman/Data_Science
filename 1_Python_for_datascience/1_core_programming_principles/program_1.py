#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sat Dec 19 06:37:07 2020

@author: Shamsur Rahaman

# 01_Core programming
 Topics : variables, loop, if statement
 
"""
# Variables : int
x = 2
print(x)
type(x)

# float/double
y = 2.3
print(y)
type(y)

# string
a = 'hello'
print(a)
type(a)

# logical (true/false)
c = True
print(c)
type(c)

# working with variable
a = 10
b = 22
c = a+b
d = b/a
print(c)
print(d)

# import "math" library
import math
e = math.sqrt(144)
print(e)
print(round(math.sqrt(d)))

# string
greeting = "Hello"
name     = "bob"
string   = greeting +" "+name
print(string)

# Boolean (True/False)
greater = 5>4
print(greater)

less = 100<101
print(less)

# Loop : While loop
#------- print 1-10 via while loop
counter = 0
while counter<10:
    counter = counter+1
    print(counter)

# For loop
# ------- print 1-10 via for loop
for i in range(1,11):
    print(i)    

# 2
for i in range(1,11):
    print("Hello Python ",i)

# 3
mylist = [10,100,1000]
for jj in mylist:
    print("jj is equal to: ", jj)    

# If statement
import numpy as np
from numpy.random import randn
print(randn())

#1
x = randn()
if x > 1:
    print(x," is greater than 1")
else : 
    print(x, 'is less than 1')    

#2 nested statement
x = randn()
if x > 1:
    print(x, " is greater than 1")
else:
    if x>= -1 and x<=1:
        print(x, " is between 1 and  -1")
    else:
        print(x, " is less than -1")

#3 chain statement
x = randn()
if x > 1:
    print(x, " is greater than 1.")
elif x >= -1 and x <= 1:
    print(x, " is between 1 and -1")
else:
    print(x, " is less than -1")





































