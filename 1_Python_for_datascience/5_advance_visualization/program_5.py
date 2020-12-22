#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Dec 22 17:04:49 2020

@author: Shamsur Rahaman

Advance Visualization

"""
# Importing Libraries
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import warnings
warnings.filterwarnings('ignore')


# Import Dataset
dataset = pd.read_csv("dataset_homework_challenge_5.csv")

# Insight in Dataset
len(dataset)
dataset.head()
dataset.tail()
dataset.info()
dataset.describe()

# Change columns name
dataset.columns = ['Film','Genre','CriticsRating','AudienceRating',
                   'BudgetMillions','Year']
dataset.head()
dataset.describe()

# Working with Joint Point
plot1 = sns.jointplot(data = dataset, 
                      x = 'CriticsRating',
                      y = 'AudienceRating')

plot2 = sns.jointplot(data = dataset, 
                      x = 'CriticsRating',
                      y = 'AudienceRating',
                      kind = 'hex')



























