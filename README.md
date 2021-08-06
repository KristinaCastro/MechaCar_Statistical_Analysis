# MechaCar_Statistical_Analysis
## Overview 

## Linear Regression to Predict MPG

The MechaCar_mpg.csv dataset contains mpg test results for 50 prototype MechaCars. The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle. Using R, I designed a linear model that predicts the mpg of MechaCar prototypes using several variables from the MechaCar_mpg.csv file. 

**The results of the linear regression model to predict mpg:**
<img width="856" alt="Linear_Reg_model" src="https://user-images.githubusercontent.com/81998045/128431401-4d4093ef-a2ef-4a31-8e86-b75293a55069.png">

  - Based on the summary calculations, the vehicle length, ground clearance & intercept variables are statistically likely to provide a non-random amount of variance to the mpg values.  
  - The slope of the linear model is not considered to be zero because the p-value is 5.35e-11 which is significanlty less than the assumed significant level of 0.05%. As a result, we can reject the null hypothesis.
  - The linear model predicts the mpg of the MechaCar prototypes effectively, the r-squared value of 0.7149 indicates that about 71% of all mpg predictions will be correct when using this linear model
