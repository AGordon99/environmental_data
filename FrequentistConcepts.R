#Frequentist Concepts Assignment
pnorm(7.5, mean = 10, sd =3)
1-pnorm(7.5, mean = 10, sd =3)

#Q1
help(dbinom)
dbinom(x = 3, size = 4, prob = 0.75)   

#Q2
help(pbinom)
pbinom(3, 4, 0.75)

#Q3
1-pbinom(3, 5, 0.75)

#Q4
help(pnorm)
pnorm(1.2, mean = 2, sd = 2)

#Q5
1-pnorm(1.2, mean = 2, sd = 2)

#Q6
pnorm(3.2, mean = 2, sd = 2) - pnorm(1.2, mean = 2, sd = 2)
