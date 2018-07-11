library(ggplot2)
iris
ggplot(data = iris, aes(x = Species)) +
  geom_bar(fill = "lightblue", colour = "black")
ggplot(data = iris, aes(x = Sepal.Length)) +
  geom_histogram()
ggplot(data = iris, aes(x = Sepal.Length, y=Sepal.Width)) +
  geom_point()
ggplot(data = iris, aes(x = Species,y=Sepal.Length)) +
  geom_boxplot()
ggplot(data = iris, aes(x=Sepal.Length,y = Sepal.Width,color=Species,size=Petal.Width)) +
  geom_point()
