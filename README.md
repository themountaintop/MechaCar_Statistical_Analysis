# MechaCar Statistical Analysis

## Overview

The purpose of this project is to:
* Predict MPG using linear regression
* Create summary statitics on suspension coils PSI
* Run T-Test on coil data to determine if manufacturing lots and each lot individually are statistically different from the population mean (1500 PSI)
* Design a statistical study to compare performance of the MechaCar vehicles against performance of vehicles from other manufacturers

## Linear Regression to Predict MPG

<img width="641" alt="linear_regression" src="https://user-images.githubusercontent.com/58227052/206773168-5ea8b5a4-fd83-441e-95e0-d4a77cf524d7.png">

* Usually, variance of a non-random variable is zero. Our non-zero coefficients intercept, vehicle_length, and gournd_clearance give us a non-random variance in relation to mpg values. 
* With the significance level at 0.5, we can reject the null hypothesis since the p-value is very small. Also, our vehicle_length and ground_clearance are positive coeeficients, giving us a non-zero slope in our linear model. 
* Although we cannot use our r-squared value determine if our coefficent estimates are biased, we can say that a multiple r-squared value of 0.7149 predicts it relatively well. And even with our adjusted value of 0.6825, the prediction fits relatively well with it still being over 50%.


## Summary Statistics on Suspension Coils

This analysis was developed to test whether the manufacturing process is consistent and that the variance does not excede the specified 100 pounds per square inch measurement. The following images show the data from the analysis:

<img width="319" alt="susp_total_summary" src="https://user-images.githubusercontent.com/58227052/207338296-968b62f2-791b-4399-b7d7-22128f92c223.png">

<img width="456" alt="manu_lot_summary" src="https://user-images.githubusercontent.com/58227052/207338393-d8acdf15-953c-4fe9-9a02-5bc55d9b7f37.png">

While the mean variance for each lot is under the specified 100 pounds per square inch, Lot3 easily eclipses the set allowable limit and gives us reason to check our manufacturaing processes for inconsistencies

## T-Tests on Suspension Coils

Totals t-test:

<img width="525" alt="t_test_susp_totals" src="https://user-images.githubusercontent.com/58227052/207352040-703c8c45-70c1-4ee4-97ef-3c8227892f91.png">

* The data shows that they are not statistically different from the total mean and our p-value is not low enough to reject our null hypothesis.

Individual Lot t-test:

<img width="607" alt="t_test_individual" src="https://user-images.githubusercontent.com/58227052/207352174-5c6c39b5-8590-4994-a5f2-5d126e8c365a.png">

* Lot1: As above, the data shows not statistically different from the total mean and that our p-value (1 in this instance) is not low enough to reject our null hypothesis.
* Lot2: Data shows not statistically different from the total mean and that our p-value (0.6072) is not low enough to reject our null hypothesis.
* Lot3: Data shows that Lot3 is statistically different (although slightly) and that our p-value _is_ low enough for us to reject our null hypothesis. This lot should be checked for consistencies and any defects or errors from the manufacturing process. 

## Study Design: MechaCar vs Competition

Thinking about other metrics that would be of interest to consumers we could consider: cost, city/highway fuel efficiency, horsepower, maintenance cost, safety rating, etc. With this particular test, we will be focusing on safety rating.

### Metrics to Test

Some variables to test would be:

* Vehicle Weight
* Vehicle Length

### Null and Alternative Hypothesis

* H<sub>0</sub> (null): MechaCar's safety ratings do not differ from other manufacturer's safety ratings.
* H<sub>a</sub> (alternative): MechaCar's safety ratings do differ from other manufacturer's safety ratings.

### Statistical Test

For testing, we could use R and t-test to determine if MechaCar's safety ratings were statistically different from other manufacturers and by how much.

### Data Needed for Testing

Vehicle weights and size measurements for each manufacturer/vehicle would be needed to start testing.
