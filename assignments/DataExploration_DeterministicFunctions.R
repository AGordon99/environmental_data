#Data Exploration and Deterministic Functions

#Q1

hist(dat_habitat$elev, main = "Frequency of Site Elevation",
     xlab = "Elevation", ylab = "Frequency", col = "red")

hist(dat_habitat$aspect, main = "Frequency of Slope",
     xlab = "Slope", ylab = "Frequency", col = "green")

hist(dat_habitat$aspect, main = "Frequency of Aspect",
     xlab = "Aspect", ylab = "Frequency", col = "blue")


#Q7-Q8
require(here())
dat_habitat <- read.csv(here("data","hab.sta.csv"))


mean(dat_habitat$aspect)
mean(dat_habitat$elev)
mean(dat_habitat$slope)
mean(dat_habitat$ba.tot)


par(mfrow = c(1,3))
x <- dat_habitat$aspect
y <- dat_habitat$ba.tot

plot(x, y, main = "Scatterplot of Aspect \n to Total Basal Area",
     xlab = "aspect", ylab = "total basal area", col = "forestgreen")
abline(lm(ba.tot ~ aspect, data = dat_habitat), col = "red")

x <- dat_habitat$elev
y <- dat_habitat$ba.tot

plot(x, y, main = "Scatterplot of Elevation \n to Total Basal Area",
     xlab = "elev", ylab = "total basal area", col = "darkorange")
abline(lm(ba.tot ~ elev, data = dat_habitat), col = "red")


x <- dat_habitat$slope
y <- dat_habitat$ba.tot

plot(x, y, main = "Scatterplot of Slope \n to Total Basal Area",
              xlab = "slope", ylab = "total basal area", col = "skyblue")
abline(lm(ba.tot ~ slope, data = dat_habitat), col = "red")


