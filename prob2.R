# 2.A solution
index <- 5
firstCityTemp <- tempData[index]
secondCityTemp <- tempData[index+1]
thirdCityTemp <- tempData[12]


# 2.B solution
plot (firstCityTemp, type="l")
plot (secondCityTemp, type="l")
plot (thirdCityTemp, type="l")

# 2.C Solution
cov(firstCityTemp, secondCityTemp)
cov(secondCityTemp,thirdCityTemp) 
cov(thirdCityTemp, firstCityTemp)


# 2.D Solution
# For city 1
tempModel <- HoltWinters(firstCityTemp.ts)
pred1 <- as.matrix(predict(tempModel, 36))
print(pred1)
print(pred1[29])

# for city 2
tempModel1 <- HoltWinters(secondCityTemp.ts)
pred2 <- as.matrix(predict(tempModel1, 36))
print(pred2[29])

# 2.E Solution
# building dataframe
touristPlace <- setRefClass("touristPlace", fields = list(nameOfPlace="character", attraction = "character", spokenLenguage="character", nameOfSeasons = "character", threeCloseByAirports="character", tempData="data.frame"))
# building 1st place dataframe
firstPlace <- touristPlace(nameOfPlace = "Sylhet", attraction = "Tea Gardern", spokenLenguage = "Sylheti", nameOfSeasons = "Rainy", threeCloseByAirports = "ZYL", tempData = firstCityTemp)
# building second place dataframe
secondPlace <- touristPlace(nameOfPlace = "Shillong", attraction = "Mountain", spokenLenguage = "hindi", nameOfSeasons = "Rainy", threeCloseByAirports = "GOAHATI", tempData = secondCityTemp)

