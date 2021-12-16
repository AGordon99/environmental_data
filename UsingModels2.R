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
t.test(flipper_length_mm ~ species, data = subset(penguins, species != "Chinstrap"))

#1 way ANOVA----
  #Graphical
par(mfrow = c(1, 2))
hist(penguins$body_mass_g, breaks = 80, main = "histogram of body mass", xlab = "body mass (g)")
plot(density(penguins$body_mass_g, na.rm = TRUE), main = "density plot of body mass")
  
boxplot(body_mass_g ~ species, data = penguins)
  
  #Numerical
dat_chinstrap = subset(penguins, species == "Chinstrap")
mean(dat_chinstrap$body_mass_g, na.rm = TRUE)

shapiro.test(dat_chinstrap$body_mass_g)

aggregate(body_mass_g ~ species, data = penguins, FUN = mean)

aggregate(
  body_mass_g ~ species,
  data = penguins,
  FUN = function(x) shapiro.test(x)$p.value)

  #Fit a linear model

fit_species = lm(body_mass_g ~ species, data = penguins)
summary(fit_species)

  #Conduct the ANOVA
anova(fit_species)

#One Way ANOVA Complete Walkthrough----
  #Two Tables: model coefficients and ANOVA

#QuestionS ----
#Q4-5
require(palmerpenguins)
fit_both = lm(body_mass_g ~ species * sex, data = penguins)
summary(fit_both)

aggregate(body_mass_g ~ species * sex,
          data = penguins,
          FUN = mean)