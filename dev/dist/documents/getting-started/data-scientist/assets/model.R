require(party)
set.seed(3291457)
#Fit the model
iris.cf <- cforest(Species ~ ., data = iris,
                   control = cforest_unbiased(mtry =2))

save(iris.cf, file="model.RData")
