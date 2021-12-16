require(here)
ginkgo <- read.csv(here("data", "ginkgo_data_2021.csv"))

class(ginkgo)

#Q1
boxplot(notch_depth ~ seeds_present, data = ginkgo,
        main = "Notch depth as a function of seeds present",
        ylab = "notch depth",
        xlab = "seeds present")

#Q2
help(scatterplot)
plot(ginkgo$max_depth, ginkgo$max_width,
     col = "goldenrod2",
     main = "scatterplot of depth and width",
     xlab = "max depth",
     ylab = "max width")
