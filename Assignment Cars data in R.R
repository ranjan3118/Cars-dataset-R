#assignment based on dataset cars

setwd("C:\Users\ayush\OneDrive\Desktop")

data() #to view datsets in r
??AirPassengers
??cars
car=cars
View(car)

#Q1
dim(car) #dimensions
str(car) #structure

names(car)
length(car$dist)
attach(car) #to make data available in present working memory
length(dist)
length(speed)

#Q2
mean(dist)
avg=mean(dist)
#Q3
car[]

car[car>42.98] # though try to avoid using hardcoded values
car[car<42.98]
length(car[car<42.98])

largerdist=dist[dist>avg]
length(largerdist)

equaldist=dist[dist==avg]
length(equaldist)

#calculate median
median=median(dist)

avg==median #both are equal

#Q4
install.packages("modeest")
library(modeest) #call function
mfv(dist) #to calculate mode

y<-table(dist)
y
names(table(dist))[table(dist)==max(table(dist))]
y[y==max(y)]
names(y)[y==max(y)]

#Q5
#mean median mode is same

#Q6
var(dist) 

#Q7
range(dist)
min(dist)
max(dist)

#Q8

summary(speed)
z<-table(speed)
z
names(z)[z==max(z)] #mode of the speed
summary(car)

#Q9
plot(dist, type="line")
barplot(dist)

plot(dist, type="h")
hist(dist, probability = TRUE) #We can see that peak attends the mean value
lines(density(dist))

plot(speed, type="line")
barplot(speed)

plot(speed, type="h")
hist(speed, probability = TRUE) #We can see that peak attends the mean value
lines(density(speed))


#skewness & kurtosis
install.packages("moments")
library(moments)
skewness(dist)
kurtosis(dist)

#poissan, binomial, discontinous ~if you increase sample size it will be follow normal distribution
#whole population clustered around mean value
#mean=median=mode (condition for SND)
#Find Skewness and Kurtosis

#skewness= (x-u/sigma)pow3 default value for skewness = 0
#kurtosis= (x-u/sigma)pow4 default value for kurtosis = 3

par(mfrow=c(1,2))
hist(dist, probability = TRUE) #We can see that peak attends the mean value
lines(density(dist))
hist(speed, probability = TRUE) #We can see that peak attends the mean value
lines(density(speed))

par(mfcol=c(2,1))
hist(dist, probability = TRUE) #We can see that peak attends the mean value
lines(density(dist))
hist(speed, probability = TRUE) #We can see that peak attends the mean value
lines(density(speed))

par(mfcol=c(1,1))

#q10
#No
#Joint distribution

#q11
cor(speed, dist)
cor(car) #gives variance/covariance matrix 
summary(car)

plot(dist~speed, type="line") #"~" means regressing distance over speed

#Running OLS
model<-lm(dist~speed)
model
summary(model)

#9.4 t value , reject the null that estimate is 0. p value is very low , reject null, positive correlation
#R square = 0.65 is a good number, model is good
#F statistics 

#Q14
std<-sd(dist)
normal<-rnorm(100,42,std) #random=r, 5 and 3 are mean and standard deviation, nor=normaldistribution
hist(normal, probability = T) 
lines(density(normal))
lines(density(dist), col="green") #comparing theoritical to practical