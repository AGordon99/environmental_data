#Using Models 2
#Recap of t-tests ----
require(palmerpenguins)

#mu=0
t.test(subset(penguins, species == "Gentoo")$flipper_length_mm)

#mu=218
t.test(
  x = subset(penguins, species == "Gentoo")$flipper_length_mm,
  mu = 218
)

#one-tailed
t.test(
  x = subset(penguins, species == "Gentoo")$flipper_length_mm,
  mu = 218,
  alternative = "less"
)

#2-sample t-test

