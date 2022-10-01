# MechaCar_Statistical_Analysis
## Linear Regression to Predict MPG
- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

The generated multiple linear regression model below shows that <b>vehicle_length</b> and <b>ground clearance</b> were the independent variables that had the lowest probability ("Pr(>|t|)") of contributing to a random amount of variance to the linear model; i.e., they are each very likely to have a correlation with the miles per gallon/fuel efficiency of the vehicle.

<img width="680" alt="deliverable_1_lm" src="https://user-images.githubusercontent.com/106359572/193420535-e8da83c4-0208-4ba7-96d9-cd2b6323b103.PNG">

- Is the slope of the linear model considered to be zero? Why or why not?

Because the p-value, 5.35e-11 (or 0.0000000000535), is significantly smaller than the assumed significance level of 0.05%, we can state that there's evidence to reject the null hypothesis, meaning that the slope is not zero.

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

The linear model does effectively predict miles per gallon; our r squared value is roughly 0.715, meaning that over 70% of the variability of the dependent variable, mpg, is explained using this lm.

<img width="632" alt="deliverable_1_lm_summary" src="https://user-images.githubusercontent.com/106359572/193420504-678b5e48-91dc-4f20-a437-cdb029f2ea5d.PNG">
<img width="543" alt="deliverable_1_lm_summary2" src="https://user-images.githubusercontent.com/106359572/193420512-b6fff082-23e5-44b8-9a1c-105ee7792e10.PNG">

## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

![image](https://user-images.githubusercontent.com/106359572/193423299-bbf7ec7f-7593-4a78-b4e6-85bda8e1172b.png)

![image](https://user-images.githubusercontent.com/106359572/193423550-2f4d5df2-ff5b-4726-9aad-f008ac090939.png)


## T-Tests on Suspension Coils
Next, write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.  summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary.
![image](https://user-images.githubusercontent.com/106359572/193423801-9bdf9e8d-a252-4401-82de-a6bfeb2b41d3.png)
![image](https://user-images.githubusercontent.com/106359572/193423903-1b155b1d-b5d6-4260-b76f-c3f80bba6632.png)


## Study Design: MechaCar vs Competition
Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.
In your description, address the following questions:
What metric or metrics are you going to test?
What is the null hypothesis or alternative hypothesis?
What statistical test would you use to test the hypothesis? And why?
What data is needed to run the statistical test?

https://2u-data-curriculum-team.s3.amazonaws.com/dataviz-online/module_15/Stats_Cheat_Sheet.pdf
