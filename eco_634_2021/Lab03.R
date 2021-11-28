install.packages("psych")
require(psych)
pairs.panels(iris)

#saving plot to an image
require(here)
png(filename = here("images", "iris.pairplot.png"))
pairs.panels(iris)
dev.off()

require(here)
dat_birds = read.csv(
  here("data", "bird.sta.csv")
)
head(dat_bird)

dat_habitat = read.csv(
  here("data", "hab.sta.csv")
)
head(dat_habitat)

dat_all = merge(dat_birds, dat_habitat)
plot(ba.tot ~ elev, data = dat_all)

sample(dat_all$CEWA,100)
sum(dat_all$CEWA)

sum(presence_vec = (dat_birds$sta == TRUE))

as.numeric(dat_all$CEWA > 1)
cewa_present_absent = as.numeric(dat_all$CEWA > 1)

plot(x = dat_all$elev, y = cewa_present_absent)


# Function to calculate the logistic parameter a given the slope and midpoint
get_logistic_param_a = function(slope, midpoint)
{
  b = slope / 4
  return (-midpoint * (slope / 4))
}

# Function to calculate the logistic parameter b given the slope
get_logistic_param_b = function(slope)
{
  return (slope / 4)
}


# Calculate the value of the logistic function at x, given the parameters a and b.
logistic = function(x, a, b)
{
  val = exp(a + b * x)
  return(val / (1 + val))
}

# Calculate the value of the logistic function at x, given a slope and midpoint.
logistic_midpoint_slope = function(x, midpoint, slope)
{
  b = get_logistic_param_b(slope)
  a = get_logistic_param_a(slope, midpoint)
  return(logistic(x, a, b))
}

plot(x = dat_all$elev, y = cewa_present_absent, xlab = "elevation", ylab = "Presence of CEWA", col = "blue")
curve(logistic_midpoint_slope(x, midpoint = 400, slope = -0.05), add = TRUE)

var_elev <- dat_habitat$elev
var_slope <- dat_habitat$slope
var_aspect <- dat_habitat$aspect
var_ba.tot <- dat_habitat$ba.tot

require(psych)
terrain.df <- data.frame(var_elev, var_slope, var_aspect, var_ba.tot)
pairs.panels(terrain.df)

# BIRD SPECIES 1
as.numeric(dat_all$NOFL > 1)
nofl_present_absent = as.numeric(dat_all$NOFL > 0)

plot(x = dat_all$ba.tot, y = nofl_present_absent, main = 
       "Northern Flicker Presence", xlab = "basal area total", 
     ylab = "Presence/Absence", col = "forest green", cex = 2, pch = 2)


curve(logistic_midpoint_slope(x, midpoint = 22.4 , slope = -1), add = TRUE)

# BIRD SPECIES 2
as.numeric(dat_all$DOWO > 1)
dowo_present_absent = as.numeric(dat_all$DOWO > 0)

plot(x = dat_all$ba.tot, y = dowo_present_absent, main = 
       "Downy Woodpecker Presence", xlab = "basal area total", 
     ylab = "Presence/Absence", col = "deeppink2", cex = 2)
curve(logistic_midpoint_slope(x, midpoint = 22.4 , slope = -2), add = TRUE)

sum(dat_all$GRJA)

sum(dat_all$GRJA > 0)
