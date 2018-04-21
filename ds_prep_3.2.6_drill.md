# Drill - Exercises in Bayes' Rule

## Decision Tree Branches

* branch_1: thripshaw and positive | 0.005 * 0.98 = 0.0049
* branch_2: thripshaw and not postive | 0.005 * 0.02 = 0.0001
* branch_3: not thripshaw and positive | 0.995 * 0.10 = 0.0995
* branch_4: not thripshaw and not positve | 0.995 * 0.90 = 0.8955

## Answers

1. Positive test result: branch_1 + branch_3 = 0.0049 + 0.0995 = __0.1044__
2. Correctly diagnose a sufferer: Given in the problem: __0.98__
3. Correctly identify a non-sufferer: branch_4 = 0.995 * 0.90 = __0.8955__
4. Misclassify the person: branch_2 + branch_3 = 0.0001 + 0.0995 = __0.0996__