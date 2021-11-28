install.packages("here")
require(here)
file.exists(here("data","bird.sta.csv"))

getwd()
dat_habitat <- read.csv(here("data","hab.sta.csv"))
View(dat_habitat)
head(dat_habitat)

#histograms for terrain variables 
par(mfrow = c(1,3))
hist.elev <- hist(dat_habitat$elev, xlab = "Elevation", main = "Frequency of Site Elevation", col = "red")
hist.slope <- hist(dat_habitat$slope, xlab = "Slope", main = "Frequency of Slope", col = "green")
hist.aspect <- hist(dat_habitat$aspect, xlab = "Aspect", main = "Frequency of Aspect", col = "blue")


#scatterplots for terrain variables
plot(x = dat_habitat$elev, y = ba.tot, xlab = "elevation", ylab = "total basal area")
