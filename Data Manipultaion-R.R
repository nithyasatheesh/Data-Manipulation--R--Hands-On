###------------------ Data Manipulation -R -----------------------##

#1. Set your working directory

#2. Load Csv file and and name it as 'oj'

#3. View first 6 observations

#4. Check the descriptive statistics

#5. Select the rows where the brand bought is Tropicana and  
#no feature advertisement is run from the columns week and store.

#6.Add  value 1 to the variable Income and assigned it into Inc

#7. Find the Mean price of juice across brands : 
# and assign the name is 'agg'

#agg<-group_by(oj,brand)%>% summarize(mean(price))   # dplyr package

#8. Rename the column names as 'Group_wise' , 'avg_price'  in agg variable.


#9. Remove the column price from the data


##--------------Handling Missing values------------##
#10.Find the missing values in the airquality data set and
#replace the missing values in the column Ozone by the mean value.

data()
air<-airquality


#--------------------------End-------------------------------#
