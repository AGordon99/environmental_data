library(MASS)
data(Animals)
head(Animals)

plot(x = Animals$body, y = Animals$brain)

data_center_x = mean(Animals$body)
data_center_y = mean(Animals$brain)
c(data_center_x, data_center_y)

plot(x = Animals$body, y = Animals$brain, xlab = "Body", ylab = "Brain")
points( x = data_center_x, y= data_center_y, col = "red")
curve(
  line_point_slope(
    x, 
    data_center_x, 
    data_center_y,
    -2), 
  add = TRUE)
title("Andrew Gordon Animal Scatterplot")
