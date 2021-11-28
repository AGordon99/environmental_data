#Catastrophe Rate
require(here)
catrate <- read.csv(here("data","catrate.csv"))
head(catrate)
summary(catrate)

#Q1
hist(catrate$cat.rate,
     main = "Gordon - Histogram of Catastrophe Rates",
     xlab = "catastrophe rate")
#Q2
#Check for Normality
shapiro.test(catrate$cat.rate)

##One-Sample Tests
#Parametric One-Sample Test: t-test
help(t.test)

#Q5
t.test(catrate$cat.rate, mu= (2/7))

t.test(catrate$cat.rate, mu=(2/7),
       alternative = "less")

#Non-Parametric One-Sample Test: The Wilcoxon Rank Sum Test
#Q11
wilcox.test(catrate$cat.rate, mu = 2 / 7)

#Comparing Two Sample Means
require(palmerpenguins)
penguin_dat = droplevels(subset(penguins, species !="Gentoo"))

summary(penguin_dat)

boxplot(
  flipper_length_mm ~ species, 
  data = penguin_dat,
  ylab = "Flipper Length (mm)")

##Testing for normality
dat_adelie = subset(penguin_dat, species == "Adelie")
dat_chin = subset(penguin_dat, species == "Chinstrap")

shapiro.test(dat_adelie$flipper_length_mm)


shapiro.test(dat_chin$flipper_length_mm)

#Histograms
par(mfrow = c(1,2))


hist(dat_adelie$flipper_length_mm,
     main = "Histogram of Adelie flipper lengths",
     xlab = "flipper length mm")
hist(dat_chin$flipper_length_mm,
     main = "Histogram of Chinstrap flipper lengths",
     xlab = "flipper length mm")

#Parametric & Nonparametric Tests
##Two Sample Test
t.test(dat_adelie$flipper_length_mm ~ dat_chin$flipper_length_mm)

t.test(
  x = dat_adelie$flipper_length_mm,
  y = dat_chin$flipper_length_mm,
)