# Project 4: Causal Inference

### [Project Description](doc/project4_desc.md)

Term: Fall 2020

+ Team 4
+ Project title: Causal Inference Algorithms Evaluation: Stratification, Regression Adjustment, and the combined method with propensity score based on trees
+ Team members
	+ Zhenglei Chen
	+ Jaival Desai
	+ Qinzhe Hu
	+ Levi Lee
	+ Luyao Sun
	+ Xinyi Wei
+ **Project summary**:  In this project, our group implemented Stratification, Regression Adjustment, and the combined method with propensity scores based on tree models for High and Low dimensional datasets, then evaluate theses three methods in terms of runtime and how close to true value of Average Treatment Effect (ATE). For stratification method, we choose K=3 strata to avoid empty stratum, and calculate ATE by formula . For the regression adjustment method, we regress the response variable (Y ) with the treatment variable (A) and the estimated propensity scores. What’s more, for method three, we combine the first two methods together to get coefficients for the variable A within every stratum, and take a weighted average of them to produce estimated ATE.
+ **Result**

ATE | High Dimension Data | Low Dimension Data
------------ | ------------- | -------------
True ATE | -3.000000 | 2.500000
Stratification | -2.144670 | 2.673899
Reg Adjust. | -2.527116 | 3.053240
Strati. & Reg Adjust. | -2.503732 | 3.022839

Runtime | High Dimension Data | Low Dimension Data
------------ | ------------- | -------------
PS Estimation | 1.24324393 | 0.03291011
Stratification | 0.31650686 | 0.12155604
Reg Adjust. | 0.04108310 | 0.01595902
Strati. & Reg Adjust. | 0.03195000 | 0.02493501

+ **Evaluation**: The results showed above were relatively consistent among all three methods–there were no large deviations from the true value. In particular, the ATE for stratification was actually quite close to the true value for the low dimensional data. Additionally, compared to other methods, we note the relative ease of interpretation and fast run times for not only the propensity score estimations but also for the ATE estimations as well. 

+ **Reference**

1. Atkinson, Beth. “Recursive Partitioning And Regression Trees.” R Documentation, DataCamp, www.rdocumentation.org/packages/rpart/versions/4.1-15/topics/rpart.
2. Austin, Peter C. 2011. “An Introduction to Propensity Score Methods for Reducing the Effects of Confounding in Observational Studies.” Multivariate Behavioral Research 46 (3): 399–424.
3. Chan, David & Ge, Rong & Gershony, Ori & Hesterberg, Tim & Lambert, Diane. (2010). Evaluating online ad campaigns in a pipeline: Causal models at scale. Proceedings of the ACM SIGKDD International Conference on Knowledge Discovery and Data Mining. 7-16. 10.1145/1835804.1835809
4. D’Agostino RB Jr. Propensity score methods for bias reduction in the comparison of a treatment to a non-randomized control group. Stat Med. 1998 Oct 15;17(19):2265-81. doi: 10.1002/(sici)1097- 0258(19981015)17:19<2265::aid-sim918>3.0.co;2-b. PMID: 9802183. 
5. Hastie, Trevor„ Robert Tibshirani, and J. H Friedman. The Elements of Statistical Learning: Data Mining, Inference, and Prediction. 2nd ed. New York: Springer, 2009. Print.
6. Lunceford, Jared K, and Marie Davidian. 2004. “Stratification and Weighting via the Propensity Score in Estimation of Causal Treatment Effects a Comparative Study.” Statistics in Medicine 23 (19):2937–60.
7. Rosenbaum PR, Rubin DB. The central role of the propensity score in observational studies for causal effects. Biometrika 1983; 70:41–55.

+ **Contribution statement**: All team members contribute to this project. All team members approve our work presented in this GitHub repository including this contributions statement. 
  + **Zhenglei Chen** constructed the main frame of Method 2 (Regression Adjustment), worked with the team to revise the code of Method 2(Regression Adjustment), wrote the code of presenting one table of run times of three methods and the other table of ATE comparison, wrote the result and conclusion statement in the test.Rmd file, participated in every stage of the project’s discussion.
  + **Jaival Desai** helped with the report writing.
  + **Qinzhe Hu** constructed the description baseline for main material, and created the powerpoint slides for presentation. Presenter of our group. Participated in cross validation and propensity socres fold decision.
  + **Levi Lee** revised the project 3 code (with permission from the TA) to cross-validate the tree model and wrote out the code for Methods 1 (Stratification) and 3 (Stratification + Regression Adjustment). He also revised code for Method 2 (Regression Adjustment), created the basic framework for the test.Rmd file, wrote the discussion for Method 2, Method 3, and Conclusion sections, and proofread the report.
  + **Luyao Sun** contributed the coding part of Method 1 (Stratification), wrote the discussion for Method 1 and edited the README file. Participated in every stage of the project's discussion.
  + **Xinyi Wei** helped complete the Regression Adjustment method and helped with the Stratification Regression Adjustment method.
  

Following [suggestions](http://nicercode.github.io/blog/2013-04-05-projects/) by [RICH FITZJOHN](http://nicercode.github.io/about/#Team) (@richfitz). This folder is orgarnized as follows.

```
proj/
├── lib/
├── data/
├── doc/
├── figs/
└── output/
```

Please see each subfolder for a README file.
