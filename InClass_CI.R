qnorm(c(0.025, 0.975))
qnorm(c(0.05, 0.95))

help(qt)
p <- c(0.025, 0.975)
qt(p, 10)

qnorm(p)
qt(p, 20)
qt(p, 14)
qt(p, 50)
qt(p, 60)
qt(p, 473)

#sse = sd/ sqrt of count
sse <- 3.14/sqrt(50)
sse

CI_radius <- sse * qt(c(0.025, 0.975))


