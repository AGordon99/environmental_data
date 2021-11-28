#In-Class Likelihood

dat_bird = read.csv(here::here("data", "bird.sta.csv"))
dat_habitat = read.csv(here::here("data", "hab.sta.csv"))
dat_all = merge(dat_bird, dat_habitat)

summary(dat_all$WIWA)

hist(dat_all$WIWA, breaks = 0:7-.5)

par(mfrow = c(1, 2))
dat = dat_all$WIWA
hist(dat, breaks = 0:(max(dat) + 1) - 0.5, main = "Histogram of\nWilson's Warbler counts")

dat = dat_all$GRJA
hist(dat, breaks = 0:(max(dat) + 1) - 0.5, main = "Histogram of\nGray Jay counts")

#q1
wiwa_counts = c(2, 6)
dpois(x = wiwa_counts, lambda = 3.2)
#maximize sum of logarithms of indiv densities

sum(log(dpois(x = wiwa_counts, lambda = 4.01)))

#q2
wiwr_counts = c(2,6)
dpois(x = wiwr_counts, lambda = 2.00)
sum(log(dpois(x = dat_all$WIWR, lambda = 1.456023)))

mean(dat_all$WIWR)
#for the pois. dist., the mean as lambda should maximize
hist(dat_all$WIWR, breaks = 0:7-0.5, main = 
       "Histogram of Winter Wren Counts", 
     xlab = "Counts")

#q3
dbinom
