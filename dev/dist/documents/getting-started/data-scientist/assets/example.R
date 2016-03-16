library(deployrUtils)
deployrPackage('party')

# load the model
if (!exists('iris.cf')) load('model.RData')

# provide some values for an observation to be scored:
deployrInput('{"name": "Sepal.Length","render": "numeric","default": 150.1}')
deployrInput('{"name": "Sepal.Width","render": "numeric","default": 5.9}')
deployrInput('{"name": "Petal.Length","render": "numeric","default": 3.1}')
deployrInput('{"name": "Petal.Width","render": "numeric","default": 1.8}')

# create a data.frame 
obs<-data.frame(Sepal.Length, Sepal.Width, Petal.Length, Petal.Width)
# score the observation and report the predicted value
Prediction <- predict(iris.cf, obs, OOB=TRUE, type = "response")
Prediction

