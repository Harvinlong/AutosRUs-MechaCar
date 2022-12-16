library(dplyr)
cardata <- read.csv("MechaCar_mpg.csv",header=TRUE, sep = ",")
View(cardata)
lmdata = lm(formula = vehicle_length ~ mpg,data = cardata)
summary(lmdata)


library(tidyverse)


data <- read.table("Suspension_coil.csv",header = TRUE, sep = ",")
data

total_summary <- data %>%
  summarize(
    mean = mean(PSI),
    median = median(PSI),
    variance = var(PSI),
    sd = sd(PSI)
  )

total_summary

lot_summary <- data %>%
  group_by(Manufacturing_Lot)%>%
  summarize(
    mean=mean(PSI),
    median=median(PSI),
    variance=var(PSI),
    sd=sd(PSI)
    
  )
lot_summary

t.test(data$PSI,mu = 1500)

anovatest <- data[,c('PSI','Manufacturing_Lot')]
anovatest$Manufacturing_Lot <- factor(anot$Manufacturing_Lot)

summary(aov(PSI~Manufacturing_Lot, data = anovatest))





