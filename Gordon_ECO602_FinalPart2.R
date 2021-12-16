#FINAL PROJECT: PART 2
require(here)
delomys <- read.csv(here("data","delomys.csv"))

#Data Exploration
summary(delomys)
shapiro.test(delomys$body_mass)
shapiro.test(delomys$body_length)
