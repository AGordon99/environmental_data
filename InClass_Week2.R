install.packages("palmerpenguins")
require(palmerpenguins)
require(here)

class(penguins)

penguins = data.frame(penguins)

mean(penguins$body_mass_g)
head(penguins$body_mass_g)
head(penguins)

help(mean)
mean(penguins$body_mass_g, na.rm = TRUE)
summary(penguins)


plot(penguins$bill_length_mm)
hist(penguins$flipper_length_mm)
pairs(penguins)

