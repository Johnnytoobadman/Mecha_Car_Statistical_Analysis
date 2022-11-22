# MECHACAR CHALLENGE


## OVERVIEW

### Jeremy has been working at AutosRUs for 10 years as a Primary Analyst.  He has been requested by upper management to look at AutosRUs' newest prototype car, the MechaCar, and review production data for any insights that may help the manufacturing team.

### The goals of this assignment are as follows:

### 1. Perform multiple linear regression analysis to identify which variables in the dataset predict the miles per gallon (MPG) of MechaCar's prototypes.

### 2. Collect summary statistics on pounds per square inch (PSI) of the suspension coils from manufacturing lots.

### 3. Run t-tests to determine if manufacturing lots are statistically different from the mean population.

### 4. Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers including a summary interpretation of the findings.


## RESOURCES

R Version 4.2.2

RStudio Version 2022.07.2-576

dpblr & tidyverse packages

MechaCar_mpg.csv (file)

Suspension_Coil.csv (file)


## Linear Regression to Predict MPG

![__](https://github.com/Johnnytoobadman/Mecha_Car_Statistical_Analysis/blob/main/Images/MechaCar_mpg_lm.png)

### a) Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset.

The vehicle length and ground clearance have the largest impact on MPG. The significant intercept value is indicating that additional scaling may be needed to confirm their correllation.

### b) Is the slope of the linear model considered to be zero? Why or why not?

The slope of the linear model is not zero as there is a significant correlation between length, ground clearance and MPG.

### c) Does this linear model predict MPG of MechaCar prototypes effectively?  Why or why not?

The multiple R- squared value is 0.715% which would normally indicate a strong R correlation yet additional scaling is necessary to confirm this since the intercept value was so large.

## Summary Statistics Collected on Suspension Coils

### The design specifications for the MechaCar suspension coils must not exceed 100 PSI.  Does the current manufacturing data meet this design specification for all manufacturing and the individual Lots?  Why or why not?



### Statistics for Manufacturing Lots

### Total

![__](https://github.com/Johnnytoobadman/Mecha_Car_Statistical_Analysis/blob/main/Images/SuspCoil_total_summary.png)

### By Lot

![__](https://github.com/Johnnytoobadman/Mecha_Car_Statistical_Analysis/blob/main/Images/SuspCoil_Lots_summary.png)

### The summary (total) statistics for all manufacturing shows a variance of 76.23 PSI which is within the 100 pSI variance allowed to meet the design criteria.

### The By Lots statistics tell a different story.  Lots 1 and 2 are well within the 100 PSI variance alowed at .98 PSI and 7.47 PSI respectively.  Lot 3 is at a variance of 170.29 PSI which is well above the variance tolerance of 100PSI and would be rejected.



## T-Test on Suspension Coils

### T-tests were performed on all Suspension Coil manufacturing lots and each lot separately to determine if the PSI is statistically different from the population mean.

![__](https://github.com/Johnnytoobadman/Mecha_Car_Statistical_Analysis/blob/main/Images/SuspCoil_total_ttest.png)

Null hypothesis: No significant difference between the mean PSI of all manufacturing lots and individual lots and a population mean of 1500 PSI.

Alternate hypostesis: Significant difference between the mean PSI of manufacturing lots and 1500 PSI.

The probability value (p-value) being considered is .05.

### The T-test on all lots combined shows a p-value of .06028 so we FAIL to reject our Null hypothesis.

### Lot 1 T-test

![__](https://github.com/Johnnytoobadman/Mecha_Car_Statistical_Analysis/blob/main/Images/SuspCoil_ttest_lot1.png)

### Lot 2 T-test

![__](https://github.com/Johnnytoobadman/Mecha_Car_Statistical_Analysis/blob/main/Images/SuspCoil_ttests_lot2.png)

### Lot 3 T-test

![__](https://github.com/Johnnytoobadman/Mecha_Car_Statistical_Analysis/blob/main/Images/SuspCoil_ttests_Lot3.png)

### The T-tests for the lots individually show the following p-values:

### Lot 1 - 1.0

### Lot 2 - 0.607

### Lot 3 - 0.04168

### Lots 1 and 2 p-values are greater than the .05 target so we FAIL to reject the Null Hypothesis of those two lots.

### Lot 3 is less than the .05 p-value at .042 so we reject the Null hypothesis.



## Study Design: MechaCar vs. Competition

### Describe a statistical study that quantifies how MechaCar performs against the competition using metrics of interest to the consumer (e.g. cost, fuel efficiency, horsepower, maintenance costs and safety ratings)

### 1. Metrics Tested:  Cost, MPG, Horsepower, Safety Rating

### 2. Hypothesis:

Null Hypothesis (Ho): There is no statistical difference on the defined metrics above between the MechaCar and it's competition.

Aternate Hypothesis (Ha): There is a statistical difference on the defined metrics above between the MechaCar and it's competition.

The probability value (p-value) for this study is .05.

### 3. Statistical test used:

### t-test

The t-test will be use to test the mean of the metrics selected.

The data should be carefully selected to adhere to certain assumptions (e.g. luxury sedan type, US Market, Safety Institute data, etc.)

If the p-value from the t-tests is less than .05 then we reject the Null hypothesis.

### 4. Data needed to run the t-test:

Jeremy will need to identify the MechaCar competitors and confirm that they are of the vehicle type and meet the assumptions for the correct consumer market.  Then Jeremy will need to get the MSRP Cost of the MechaCar and it's competitors, the MPG data that has been confirmed by third party testing, horsepower data again confirmed by a third party and Safety ratings provided by a Nationally recognized Safety Institute.

<end>
