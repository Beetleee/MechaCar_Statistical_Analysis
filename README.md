# Module 15  R Studio - MechaCarChallenge

### by Terra Lasho 

### For this Project, I was tasked with using R Studio to analyze statistics for AutosRUs’ newest prototype, the MechaCar. This product was having problems during production which was blocking progress for the company.  Specifically, I am helping to identify particular variables which predict the miles per gallon (mpg) for the prototype (using linear regression model). I next collected summary statistics on the pounds per square inch (PSI) of the suspension coils of the prototype. I ran t-tests to see if the lots are different from the mean total population. Finally, I oraganized the design for a prospective study to compare the vehicle performance of the MechaCar to vehicles from other manufacturers.

## **Deliverable 1: Linear Regression to Predict MPG**

### Statistical Summary: 

![](https://github.com/Beetleee/MechaCar_Statistical_Analysis/blob/main/Resources/plot1.png)

### We performed a linear regression on 6 metrics for this prototype to see which effect the mile per gallon (MPG), From our summary statistics, we can see that: 1)  both the length of the vehicle (vehicle_length) and ground clearance (ground_clearance) are statistically likely to effect or impact on miles per gallon on this prototype (note p-value *** to the right of each), whereas the vehicle weight (vehicle_weight), spoiler angle (spoiler_angle) and All Wheel Drive (AWD) have random non-significant variance (>0.05);  2) The slope of this regression line is not zero, as shown by our overall p-value for this model (which is: 5.35e-11) and <0.05, which is statistically significant and gives evidence to reject the null hypothesis; and 3) the r-squared value for this analysis is 0.7149, which indicates that ~71% of all of the MPG predictions are determined by this prototype effectively.

## Deliverable 2: Create Visualizations for the Trip Analysis

## Summary Statistics on Suspension Coils 

### For this Deliverable, I used a dataset (suspension_Coil) which contained the results from multiple lots of the prototype.  I analyzed the weight capacities of multiple suspension coils to determine consistency across the lots.  

### Summary Statistics:

### All Manufacturing Lots:

![](https://github.com/Beetleee/MechaCar_Statistical_Analysis/blob/main/Resources/plot2.png)

### The 3 Individual Lots:

![](https://github.com/Beetleee/MechaCar_Statistical_Analysis/blob/main/Resources/plot3.png)

### The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 

-	Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

### The variance of the entire population (including all 3 Lots) is 62.29 PSI -and this is well within the 100 PSI recommendation.  When looking at the individual Lot stats, we see that both Lot 1 and Lot 2 have variances within the 100 PSI (Lot1 = 0.98, Lot2 = 7.5), however, Lot3 seems to have a lot more variability in consistency (Lot3 = 170) and this would be causing the variance in the total level Variance.

### variability in lots:

![](https://github.com/Beetleee/MechaCar_Statistical_Analysis/blob/main/Resources/plot4.png)

### This Box Plot shows the large variability in Lot3 vs. Lots 1 & 2.

## Deliverable 3: T-Tests on Suspension Coils

### For this Deliverable, I had to perform t-tests to determine if all of the Lots were statistically different from each other and the total prototype population, -for a presumed population mean of 1,500 pounds per square inch.

### Summary of t-tests across ALL Lots (1 sample t-test)

#### the code for a one sample t-test across all the given data for the Lots:

![](https://github.com/Beetleee/MechaCar_Statistical_Analysis/blob/main/Resources/plot5.png)

#### The summary statistics for the one sample t-test:

![](https://github.com/Beetleee/MechaCar_Statistical_Analysis/blob/main/Resources/plot6.png)

### The results show that the true mean of the population is 1497.5, and with a p-value of >0.05 (0.06028) this is NOT significant and therefore, we do not have enough evidence to reject the null hypothesis.  SO, the mean of all three of these Lots is statistically similar to each other (to the presumed mean of 1500).  

### Summary of individual t-tests

#### the code for a one sample t-test for each individual t-test:

![](https://github.com/Beetleee/MechaCar_Statistical_Analysis/blob/main/Resources/plot7.png)

#### The summary statistics for each sample t-test:

![](https://github.com/Beetleee/MechaCar_Statistical_Analysis/blob/main/Resources/plot8.png)

### When we look at the individual Lots, Lot1 actually has the true sample mean of 1500.  We see that our p-value also shows that we cannot reject the null hypothesis that there is no statistical difference between the observed mean (1500) and the presumed mean (1500). For Lot2, we see the same thing. The observed mean is 1500.2, with a p-value of 0.61 -also not significant. For Lot3, the observed mean is 1496.14, which is different from the presumed mean. When we look at the p-value, we see it is 0.04, which IS significant (<0.05), and we can reject the null hypothesis, which is to say we have statistical support to say that the mean is different from the presumed population.  Overall, this indicates that something is wrong with Lot3 and the team needs to focus on possibly removing/replacing this batch.

## Deliverable 4: Design a Study Comparing the MechaCar to the Competition

### Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.

## Null Hypothesis:

### The MechaCar has maintained its reputation as a great model, based on its performance of safety feature ratings, and resale value.

## Alternative Hypothesis:

### The MechaCar has maintained its reputation as a great model, based on its performance of safety feature ratings, and resale value.

## Statistical Tests: I would perform multiple linear regression tests to determine factors that support the reputation and then use an anova to compare the regression tests as separate arguments to determine the significance of the relationship of multiple factors.
