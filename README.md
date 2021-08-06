# MechaCar_Statistical_Analysis
## Overview 
AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. Using multiple linear regression analysis, summary statistics and t-test we will design a statistical study to review the production data for insights that may help the manufacturing team.

## Linear Regression to Predict MPG

The MechaCar_mpg.csv dataset contains mpg test results for 50 prototype MechaCars. The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle. Using R, I designed a linear model that predicts the mpg of MechaCar prototypes using several variables from the MechaCar_mpg.csv file. 

**The results of the linear regression model to predict mpg:**
<img width="856" alt="Linear_Reg_model" src="https://user-images.githubusercontent.com/81998045/128456541-baaea8fd-2a56-4b25-b48e-9ad7628d7122.png">

  - Based on the summary calculations, the vehicle length, ground clearance & intercept variables are statistically likely to provide a non-random amount of variance to the mpg values.  
  - The slope of the linear model is not considered to be zero because the p-value is 5.35e-11 which is significantly less than the assumed significant level of 0.05. As a result, we can reject the null hypothesis.
  - The linear model predicts the mpg of the MechaCar prototypes effectively, the r-squared value of 0.7149 indicates that about 71% of all mpg predictions will be correct when using this linear model

## Summary Statistics on Suspension Coils

In this dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across all production lots. Using R, I created a summary statistics table to show: The suspension coil’s PSI across all manufacturing lots and the PSI metrics for each lot.

### **Total Summary:**
![total_summary](https://user-images.githubusercontent.com/81998045/128437048-f84f0147-3b42-46ea-9030-b9f98f08ea58.png)

### **Lot Summary:**
![lot_summary](https://user-images.githubusercontent.com/81998045/128437052-74b40120-0fb9-4cfd-a538-69fef7036d67.png)
*The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.*

When reviewing the total summary of all manufacturing lots, the overall PSI variance is 62.29 which is within the 100 PSI design specification.

When we look at each Lot summary, Lot 1 & Lot 2, the variance of the suspension coils meets the design specifications staying well below the 100 PSI variance requirement with a 0.97 & 7.4 PSI variance. Lot 3 has a variance of 170.28 PSI which exceeds the requirement of 100 PSI as a result Lot 3 manufacturing process is not consistent and not operating within the design specifications. 

## T-Tests on Suspension Coils

A T-test was performed to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

### **Total Summary:**
<img width="484" alt="t_test1" src="https://user-images.githubusercontent.com/81998045/128447425-caf3b855-7c25-492f-bcb7-0455a220ca31.png">

When compared to the population mean, the PSI across all lots renders a p-value of 0.06 which is above the assumed significance level of 0.05 and therefore is not considered statistically significant, we cannot reject the null hypothesis. This means that there is reason to believe that any variability in the data is due to random chance, and that the sample can be considered representative of the population. 

### **Lot 1 Summary:**

<img width="510" alt="t_test2" src="https://user-images.githubusercontent.com/81998045/128447882-9d8a4fcc-fd2a-4ef2-bd88-7d6266725e0f.png">

When compared to the population mean, the PSI of lot 1 renders a p-value of 1.0 and therefore is not considered statistically significant, we cannot reject the null hypothesis as there is no statistical difference between the observed sample mean and the population mean of 1500.

### **Lot 2 Summary:**

<img width="510" alt="t_test3" src="https://user-images.githubusercontent.com/81998045/128447924-9f55d4dd-2561-4312-b62a-43f96f7a26fa.png">

The PSI of lot 2 shows a p-value of 0.60 and therefore is not considered statistically significant. The observed sample mean is also almost the exact same as the population mean which provides no reason to reject the null hypothesis.

### **Lot 3 Summary:**

<img width="510" alt="t_test4" src="https://user-images.githubusercontent.com/81998045/128447938-754cd5a8-f9aa-42b9-a155-a6fbbc6899ff.png">

The PSI of lot 3 renders a p-value of 0.04 and therefore can be considered statistically significant, since it's below the significance level of 0.05. We can reject the null hypothesis; this means that likely the data is not due to random chance. The PSI for Lot 3 is statistically different from the population mean of 1500 PSI, this specific sample cannot be considered accurately representative of the overall population.

## Study Design: MechaCar vs Competition
*Design a statistical study to compare performance of the MechaCar vehicles against performance of vehicles from other manufacturers.*

A statistical study to measure the relationship between car fuel efficacy and type of car brand. We can further our original analysis to see whether there is a statistically significant difference in fuel efficiency when analyzing across different car manufacturers. We would test our performance in different environments and road conditions. We would also need to gather our competitors mpg data for comparison, using the same parameters.

For this study:
  - Metrics: Avg mpg for similar car styles 
  - Null Hypothesis: There is no statistical difference between MechaCars mpg dataset and other car manufacturers mpg dataset on the market.
  - Alternative Hypothesis: The true mean of MechaCars mpg dataset is GREATER than the mean of our competitors fuel efficiency dataset.
  - Statistical Test to test hypothesis: 
      - ANOVA - analysis of variance is the fitting statistical test used to compare the means across all samples and determines whether there is a significant difference in at least one sample.
  - Data needed to run statistical text: Competitors avg mpg data for comparison, using the same parameters, i.e., car type 

If MechaCar is truly considered a fuel efficient car, then the statistical analysis will render as significant, which indicates that there is true value in choosing it over competitors based on fuel efficiency.
