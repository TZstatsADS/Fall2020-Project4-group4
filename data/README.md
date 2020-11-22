### Data folder

The data directory contains data used in the analysis. This is treated as read only; in paricular the R/python files are never allowed to write to the files in here. Depending on the project, these might be csv files, a database, and the directory itself may have subdirectories.


highDim_dataset.csv
	High dimensional dataset (see description below)
lowDim_dataset.csv 
	Low dimensional dataset (see description below)




Dataset Description (from Piazza):

	Y is the response variable (continuous) 
	A is the treatment variable (binary/class)
	V1 through Vp are covariates/predictors. The number of covariates, p, varies across datasets. (Either binary or continuous)

Data source: Atlantic Causal Inference Conference (ACIC) Data Challenge