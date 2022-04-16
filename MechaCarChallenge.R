#Use the library() function to load the dplyr package.
library(dplyr)
library(tidyverse)

#--------Deliverable 1------------
#1. Import and read in the MechaCar_mpg.csv file as a dataframe.
mecha_Car <- read.csv('Resources/MechaCar_mpg.csv')
head(mecha_Car)

#2. Perform linear regression using the lm() function. Pass all 6 variables (columns) 
lm(mpg ~ vehicle_length + 
     vehicle_weight + 
     spoiler_angle + 
     ground_clearance + 
     AWD,data =mecha_Car)

#3. Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + 
             vehicle_weight + 
             spoiler_angle + 
             ground_clearance + 
             AWD,data =mecha_Car)) 

#--------Deliverable 2------------
#1. Import and read in the Suspension_Coil.csv file as a table.
suspension_Coil <- read.csv('Resources/Suspension_Coil.csv')
head(suspension_Coil)

#2. Write an RScript that creates a total_summary dataframe using the summarize() function 
#3. to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
Mean = mean(suspension_Coil$PSI)
Median=median(suspension_Coil$PSI)
Variance=var(suspension_Coil$PSI)
SD = sd(suspension_Coil$PSI)

summary_Total <- data.frame(Mean,Median,Variance,SD)

#4. Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions 
#   to group each manufacturing lot by the mean, median, variance, and standard deviation 
#   of the suspension coil’s PSI column.
lot_summary <- suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(
    Mean=mean(PSI),
    Median = median(PSI),
    Variance = var(PSI),
    SD = sd(PSI), 
    .groups = 'keep') 

#do visual boxplots on Whole Lot and each individual Lot
plot1 <- ggplot(
  suspension_Coil, 
  aes(y=PSI))
plot1 + geom_boxplot()

plot2 <- ggplot(
  suspension_Coil, 
  aes(x=Manufacturing_Lot,y=PSI))
plot2 + geom_boxplot()

#--------Deliverable 3------------
#1. perform t-tests to determine if all manufacturing lots and each lot individually 
t.test((suspension_Coil$PSI),mu = 1500)

#   are statistically different from the population mean of 1,500 pounds per square inch
t.test(subset(suspension_Coil,Manufacturing_Lot =="Lot1")$PSI,mu = 1500)
t.test(subset(suspension_Coil,Manufacturing_Lot =="Lot2")$PSI,mu = 1500)
t.test(subset(suspension_Coil,Manufacturing_Lot =="Lot3")$PSI,mu = 1500)
