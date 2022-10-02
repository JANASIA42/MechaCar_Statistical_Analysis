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

For this deliverable, we've created a dataframe ("total_summary") using the summarize() function to find the mean, median, variance and standard deviation for all suspension coils' PSI column (1st image below).  
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.  However, as shown in image #2 below, the variance for Lot 3 vehicles far exceeds this limit with a variance of over 170.

![image](https://user-images.githubusercontent.com/106359572/193423299-bbf7ec7f-7593-4a78-b4e6-85bda8e1172b.png)

![image](https://user-images.githubusercontent.com/106359572/193423550-2f4d5df2-ff5b-4726-9aad-f008ac090939.png)


## T-Tests on Suspension Coils
In Deliverable 3, we've created three additional RScripts using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch. 
As shown in the below images, Lot 3 is once again the outlier, with a p-value less than the assumed 0.05%, and a mean of 1496.4.
![image](https://user-images.githubusercontent.com/106359572/193423801-9bdf9e8d-a252-4401-82de-a6bfeb2b41d3.png)
![image](https://user-images.githubusercontent.com/106359572/193423903-1b155b1d-b5d6-4260-b76f-c3f80bba6632.png)


## Study Design: MechaCar vs Competition
Future maintenance cost often weighs in heavily in consumers' decision making factors when choosing a vehicle.
An additional metric to analyze should be <b>average repair cost per mile driven</>.  An ANOVA test would best suit this, since the data would come from multiple samples (i.e., vehicle manufacturers).

Our null hypothesis in this case would be that there is no significant difference between the means of cost per mile between the various vehicle makes.  Our alternative hpyothesis would be that that is a significant difference.  The data we'd need to collect would be, at a minimum, vehicle make and model (categorical), along with number of miles driven and number of dollars spent on maintenance/repairs to date (quantitative).  
Other independent variables to consider would be vehicle length, weight, number of cylinders and horsepower, to see whether there's a strong correlation between any of the above variables and the cost of maintenance.  We could look at the p-value for all analyses to see whether there's justification in rejecting or failing to reject our null hypothesis.
