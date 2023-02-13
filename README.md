# Predicting-Customer-Oil-Consumption
## This project aims to develop an oil consumption estimation model that is practical and reliable using R

Smith Fules sells heating oil to residential customers and would like to build a model to predict its customer’s oil consumption.

Oil customers are exposed to the risk of running out of fuel. Home heating oil suppliers therefore have to guarantee that the customer’s oil tank will not be allowed to run dry. Home heating oil industry try uses the concept of a degree-day, equal to the difference between the average daily temperature and 68 degree Fahrenheit. So if the average temperature on a given day is 50, the degree-days for that day will be 18. If the degree-day calculation results in a negative number, the degree-day number is recorded as 0.

By keeping track of the number of degree-days since the customer’s last oil fill, knowing the size of the customer’s oil tank, and estimating the customer’s oil consumptions as a function of the number of degree-days, the oil supplier can estimate when the customer is getting low on fuel and then resupply the customer. However, Smith has more than 2000 customers and computational burden of keeping track of all of these customers is enormous.
Smith wants to develop a consumption estimation model that is practical and reliable.

The file ‘Oli usage.xlsx’ contains recent oil usage of 40 customers with the following variables:

•	**OilUsage**: The oil consumption amounts in gallons for 40 customers.

•	**DegreeDays**: The number of degree-days since the last oil fill for 40 customers.

•	**HomeFactor**: An assessment of the home type of each of the 40 customers (levels={1,2,3,4,5}).

•	**NumberPeople**: The number of people residing in the home of each of the 40 customers.
 
The project uses R to conduct the different statistical analyses.
