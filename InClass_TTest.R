require(palmerpenguins)
dat_ade = droplevels(subset(penguins, species == "Adelie"))

dat_ade_female = droplevels(
  subset(dat_ade, sex == "female"))
  
dat_ade_male = droplevels(
  subset(dat_ade, sex == "male"))

hist(dat_ade$body_mass_g, main = "Adelie Penguins: Body Mass",
     xlab = "body mass (g)")

#Q1
boxplot(dat_ade_female$body_mass_g,
        main = "Adelie Penguins: Body Mass",
        xlab = "body mass (g)")
#one sample test
#Q2
help(t.test)
t.test(dat_ade_female$body_mass_g, alternative = "g", mu =0)

#reject the null

#Q3
t.test(dat_ade_male$body_mass_g, alternative = "g", mu =4000)

#fail to reject the null

#two sample test
#Q6
t.test(
  x = dat_ade_female$body_mass_g,
  y = dat_ade_male$body_mass_g,
  alternative = "t"
)
#if our conf int contains 0, we cant reject H0 in 2samptest

#Q8
t.test(
  x = dat_ade_female$body_mass_g,
  y = dat_ade_male$body_mass_g,
  alternative = "l"
)

#random - are females heavier than males

#xy syntax
t.test(
  x = dat_ade_female$body_mass_g,
  y = dat_ade_male$body_mass_g,
  alternative = "g"
)

#formula/data syntax
t.test(
  formula = body_mass_g ~ sex,
  data = dat_ade,
  alternative = "g")

#p value of 1 is telling us we fail to reject H0


