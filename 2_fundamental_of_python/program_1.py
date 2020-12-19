# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""
### Find Maximum
x = int(input("Please enter a number : "))

if x < 0 :
    print("Negative")
elif x == 0:
    print("Zero")
elif x == 1:
    print("Single")
else:
    print("Greater than One")
    
### For statement
words = ["cat","window","defenestrate"]
for w in words:
    print(w, len(w))
    
### Range function
for i in range(5):
    print(i)
    
### To iterate over the indices 
### of a sequence, you can combine 
### range() and len() as follows:
    
a = ['mary', 'had', 'a', 'little', 'lamb']
for i in range(len(a)):
    print(i, a[i]) 
    
### SUm function
sum(range(4))

### list from a range
list(range(4))

### break and continue Statements, 
### and else Clauses on Loops

for n in range(2,10):
    for x in range(2,n):
        if n%x == 0:
            print(n, "equals", x, "*", n//x)
            break;
    else:
            print(n, "is a prime number")
     
        
### Continue statement

for num in range(2,10):
    if num%2 == 0:
        print(num, "is an even number")
        continue
    print(num, "is an odd number")
    
### Fibonacci series
    
def fib(n):
    a, b = 0, 1
    while(a < n):
        print(a, end='')
        a, b = b, a+b
    print()
fib(2000)

### Fibonacci series

def fib2(n):
    result = []
    a, b = 0, 1
    while (a < n):
        result.append(a)
        a, b = b, a+b
    return result
fib2 = fib2(100) 
fib2
        
###    

def ask_ok(prompt, retries  = 4, remainder = "Please try again!"):
    while True:
        ok = input(prompt)
        if ok in ('y','yes'):
            return True
        if ok in ('n','no'):
            return False
        retries = retries - 1
        if retries < 0:
            raise ValueError('invalid user response')
        print(remainder)
    
### Print default value

i = 5
def f(arg = i):
    arg = 8
    print(arg)
    
f()

### arguments passed on subsequent calls

def f(a, L=[]):
    L.append(a)
    return L
print(f(1))
print(f(2))
print(f(3))

### don't share default between subsequent

def f(a, L = None):
    if L is None:
        L = []
    L.append(a)
    return L
print(f(1))
print(f(2))

### *name symbol

def cheeseshop(type, *arguments, **keywords):
    print("Do you have any, ",type, "?")
    print("Sorry, Sir, We are all out of, ",type)
    for arg in arguments:
        print(arg)
    print("_" * 40)
    for kw in keywords:
        print(kw, ":",keywords[kw])

cheeseshop("Limburger","It is very runny, sir","It really is very RUNNY",shopkeepr = "sam",client="rah")


### Paying close attention to the '/' and '*'

def standard_arg(arg):
    print(arg)
def pos_only_arg(arg):
    print(arg)
def key_only_arg(arg):
    print(arg)
def combined_example(pos_only,/,standard, *, key_only):
    print(pos_only, standard, key_only)
    

### COncat
    
def concat(*args, sep="/"):
#    for a in args:
#       print(a)
    return sep.join(args)
concat("My","name","is")
concat("My","name","is",sep=".")



