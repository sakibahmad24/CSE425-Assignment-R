# 3.A Solution
attach(mtcars)
carData.df <- mtcars[, c(1, 2, 4, 6, 10)]

# 3.B Solution
set.seed(5)
offset <- rnorm(length(mpg),mean = 5, sd = 2)
carData.df$mpg = carData.df$mpg + offset

# 3.C Solution
carType <- paste("car", 1:length(mpg))

# 3.D Solution
carData.df <- cbind(carData.df, carType)
subset(carData.df, gear==5)

# 3.F Solution
tapply(carData.df$mpg, list(carData.df$gear), mean)

# 3.G Solution
tapply(carData.df$wt, list(carData.df$cyl), mean)

# 3.H(i) Solution
count <- table(carData.df$mpg, carData.df$carType)

# 3.H.(ii) Solution
barplot(count, main="MPG VS CAR TYPE", ylab="car type", xlab="mpg", las="1")
