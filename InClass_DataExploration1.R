pairs(iris)
pairs(iris[, c("Petal.Width", "Sepal.Width", "Sepal.Length")])


# use the here() function to read in the csv files for dat_habitat and dat_bird

dat_habitat.df = read.csv("https://michaelfrancenelson.github.io/environmental_data/data/hab.sta.csv")
dat_bird.df = read.csv(here("data", "bird.sta.csv"))

#histogram
hist(dat_bird.df$FOSP, xlab = "Number of birds counted",
     breaks = 0:7 - 0.5)

