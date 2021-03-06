# MechaCar_Statistical_Analysis
## Linear Regression to Predict MPG
Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

1- vehicle length
2- ground_clearance

Is the slope of the linear model considered to be zero? Why or why not?

The slope of the linear model is zero because as the mpg increases the other variables increase.

Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

Yes, because over 70% of the data has a confirmed relationship, meaning it is not due to chance.

## Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

The data does not meet this specification because lot 3 is above 100 of variance. 

![lot_summary.png](resources/lot_summary.png)

![total_summary.png](resources/total_summary.png)


## T-Tests on Suspension Coils
According to the T-tests conducted on each of the lots, none were significantly different from the population mean of 1500. 

![test1.png](resources/test1.png)

![test2.png](resources/test2.png)

![test3.png](resources/test3.png)

## Study Design: MechaCar vs Competition

Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. 

Any statistical study begins with a question or set of questions. We might the answers to in whic areas does the MechaCar out perform the competion? These areas could include a comparison analysis of mpg, safety, price, speed, off-road performance and more. For the purpose of this analysis we will discuss mpg. 

In your description, address the following questions:
What metric or metrics are you going to test?
An evaluation of mpg of MechaCars compared high sale cars of other brands, sorted by vehicle type (sedan, SUV, etc.). 

What is the null hypothesis or alternative hypothesis?
h1= The Mechacar will outperform the highest selling competion vehicle in all categories by giving the driver more mioles per gallon. 

h0= The Mechacar will not outperform the highest selling competion vehicle in all categories and will give the driver less miles per gallon. 

What statistical test would you use to test the hypothesis? And why?
The t-test would be the best statistical test for this purpose. The t-test will determine if there is significant difference between the means of our groups (competion vs. MechaCar). 

What data is needed to run the statistical test?
Data needed would include the mean mpg of each vehicle sorted by category. 
