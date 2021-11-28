library(MASS)
data(iris)
head(iris)

mean(iris$Sepal.Length)
sd(iris$Sepal.Width)



line_point_slope = function(x, x1, y1, slope)
{
  get_y_intercept = 
    function(x1, y1, slope)
      return(-(x1 * slope) + y1)
  linear =
    function(x, yint, slope)
      return(yint + x * slope)
  return(linear(x, get_y_intercept(x1, y1, slope), slope))
}

line_point_slope(2, 4, 4, -2)


plot(x = iris$Sepal.Width, y = iris$Sepal.Length)
points(x = data_center_x, y = data_center_y, col = "red")
curve(
  line_point_slope(
    x, 
    data_center_x, 
    data_center_y,
    -2), 
  add = TRUE)
title("Andrew Gordon Iris Scatterplot")
