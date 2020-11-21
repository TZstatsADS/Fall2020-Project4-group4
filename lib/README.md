### Code lib Folder

The lib directory contains various files with function definitions (but only function definitions - no code that actually runs).

cross_validation_trees.R
	A function that cross validates trees given a specific cp parameter

test_trees.R
	A function that predicts probability classes/propensity scores given some data and trained tree object

train_trees.R
	A function that creates a tree model given some data and cp parameter