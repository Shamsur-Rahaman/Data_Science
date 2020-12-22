#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Dec 22 10:13:19 2020

@author: Shamsur Rahaman

DataFrame

"""

# Importing Libraries
import numpy as np
import matplotlib.pyplot as plt
import pandas as pd

# Importing Datasets
dataset = pd.read_csv("dataset_homework_challenge_4.csv")

# Change Column names
print(dataset.columns)

dataset.columns = ['CountryName','CountryCode','BirthRate',
                   'InternetUsers','IncomeGroup']
print(dataset)

# Explore Datasets
dataset.head()
dataset.tail()
dataset.info()
dataset.describe()

# Subsetting Dataset
# 1 by raws
dataset[21:26]
dataset[:26]
dataset[85:]
dataset[:10]
dataset[::-1]

# 2 by columns 
dataset[:4]
dataset[['CountryName','BirthRate']]

# Combined by raws and columns
dataset[4:8][['CountryCode','BirthRate']]

# Filter DataFrame
dataset.InternetUsers> 2
filter1 = dataset.InternetUsers < 2
print(filter1)

filter2 = dataset.BirthRate > 40
print(filter2)

filter3 = (filter1 & filter2)
print(filter3)

filter4 = dataset[dataset.IncomeGroup == "High income"]
print(filter4)

filter5 = dataset[dataset.CountryName == "Malta"]
print(filter5)

# Visualization
import seaborn as sns
import warnings
warnings.filterwarnings('ignore')

vis1 = sns.distplot(dataset["InternetUsers"])

vis2 = sns.boxplot(data=dataset,x = "IncomeGroup",y = 'BirthRate')

vis3 = sns.lmplot(data=dataset, x = 'IncomeGroup', y='BirthRate',
                  fit_reg = False)

vis4 = sns.lmplot(data = dataset, x = 'InternetUsers',
                  y = 'BirthRate', fit_reg = False,
                  hue = 'IncomeGroup')

vis5 = sns.lmplot(data = dataset, x = 'InternetUsers',
                  y = 'BirthRate', fit_reg = False,
                  hue = "IncomeGroup",
                  size = 10,
                  aspect = 1)
























