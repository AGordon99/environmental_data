here()
dat_catrate <- read.csv(here("data","catrate.csv"))

dat_catrate

hist(dat_catrate$cat.rate, main = "Andrew Gordon\nHistogram of cat rate", xlab = "cat rate", col = "darkred")

