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
