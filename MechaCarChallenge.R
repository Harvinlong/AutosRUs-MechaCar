#Part 1:Linear Regression to Predict MPG
library(dplyr)
cardata <- read.csv("MechaCar_mpg.csv",header=TRUE, sep = ",")
View(cardata)
lmdata = lm(formula = mpg ~ ., data = cardata)
summary(lmdata)

#Part 2: Summary Statistics on Suspension Coils
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
#Total summary of the suspension coil’s PSI column
total_summary

lot_summary <- data %>%
  group_by(Manufacturing_Lot)%>%
  summarize(
    mean=mean(PSI),
    median=median(PSI),
    variance=var(PSI),
    sd=sd(PSI)
    
  )
#Individual summary of the suspension coil’s PSI column
lot_summary

#Part 3:T-Tests on Suspension Coils
#If PSI is different from the population mean of 1500
t.test(data$PSI,mu = 1500)

#If PSI individually different from each population mean of 1500
#Lot 1
subset_data <- subset(data, Manufacturing_Lot == "Lot1")
t.test(subset_data$PSI, mu = 1500)
#Lot 2
subset_data <- subset(data, Manufacturing_Lot == "Lot1")
t.test(subset_data$PSI, mu = 1500)
#Lot3
subset_data <- subset(data, Manufacturing_Lot == "Lot1")
t.test(subset_data$PSI, mu = 1500)





