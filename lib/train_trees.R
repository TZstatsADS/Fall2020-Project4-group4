train <- function(features, labels, w = NULL, cp, maxdepth){
  labels <- as.factor(labels)
  model <- rpart(labels ~ .,
                 method = "class",
                 weights = w,
                 data = as.data.frame(cbind(features, labels)), 
                 
                 cp = cp, # hypterparameter 1
                 maxdepth = maxdepth # hypterparameter 1
                 )
  return(model)
}


#t

# feature_train_cv, label_train_cv, w = weight_train_cv, cp, maxdepth

#part(label_train_cv ~ .,distribution = "bernoulli",
#     weights = w, data = as.data.frame(cbind(feature_train_cv, label_train_cv)), 
#     cp = cp, maxdepth = maxdepth)