indexes = sample(150, 110)
iris_train = iris[indexes,]
iris_test = iris[-indexes,]
target = Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width
target = Sepal.Length ~ ., iris
tree = rpart(target, data = iris_train, method = "class")
rpart.plot(tree)