#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sat Dec 19 10:43:06 2020

@author: Shamsur Rahaman

Home work Challenge solution

"""

# Import Libraries
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt


# import Datasets
dataset = pd.read_csv("dataset_homework_challenge_2.csv")
x = dataset.iloc[:, 0].values # x for revenue
y = dataset.iloc[:, 1].values # y for expense

# task 1 : Profit for each month
profit_for_each_month = x-y
print(profit_for_each_month)

# task 2 : profit after tax
profit_after_tax = profit_for_each_month * .7
print(profit_after_tax)

# task 3 : profit margin
first_profit_margin = (profit_after_tax)/x
second_profit_margin = first_profit_margin * 100
profit_margin = second_profit_margin

# task 4 : good monthes
avg_profit_after_tax = profit_after_tax.mean()
good_monthes = profit_after_tax>avg_profit_after_tax

# task 5 : bad monthes
# ----- done in task 4 -------

# task 6 : best month
best_month = profit_after_tax.max()

# tast 7 : worst month
worst_month = profit_after_tax.min()

























