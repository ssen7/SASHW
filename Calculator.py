# -*- coding: utf-8 -*-
"""
Created on Wed Jul 18 16:46:00 2018

@author: Saurav
"""

def add(n):
    return sum(n)

def substract(n):
    result = 0
    for item in n:
        result = result - item
    return result

def divide(n1, n2):
    return n1/n2

def multiply(n1, n2):
    return n1 * n2

def calculator():
    print("This is a calculator!")
    
    operation = 'add'
    
    result = 0
    while(operation != 'q'):
        print('''Enter operation you want to perform: 
        type 'add' to add multiple numbers 
        type 'sub' to subtract multiple numbers
        type 'mul' to multiply two numbers
        type 'div' to divide two numbers 
        (Enter 'q' to quit): \n''')
        operation = input()
        
        if(operation == 'q' or operation == 'n'):
            break
        
        if(operation == 'add'):
            numList = [int(num) for num in input("Enter numbers to add separated by spaces: \n").split()]
            result = add(numList)
            print(result)
        
        elif(operation == 'sub'):
            numList = [int(num) for num in input("Enter numbers to substract separated by spaces: \n").split()]
            result = substract(numList)
            print(result)
        
        elif(operation == 'mul'):
            numList = [int(num) for num in input("Enter two numbers to multiply separated by spaces: \n").split()]
            result = multiply(numList[0], numList[1])
            print(result)
        
        elif(operation == 'div'):
            numList = [int(num) for num in input("Enter two numbers to divide separated by spaces: \n").split()]
            result = divide(numList[0], numList[1])
            print(result)
        
        print("Do you want to continue? (y/n)")
        operation = input()
        continue
    
    return result