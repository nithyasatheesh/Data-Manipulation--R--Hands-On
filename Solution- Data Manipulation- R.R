##------------------ Data Manipulation -R -----------------------##
#1. Set your working directory
setwd("D://Files")
#2. Load Csv file and and name it as 'oj'
oj<-read.csv('oj.csv')
#3. View first 6 observations
head(oj)
#4. Check the descriptive statistics
summary(oj)
#5. Select the rows where the brand bought is Tropicana and  
#no feature advertisement is run from the columns week and store.
data<-oj[oj$brand=='tropicana'& oj$feat==0,c("week","store")]
library('dplyr')
data1<-filter(oj,brand=='tropicana'& feat==0)%>% select(c('week','store'))

#6.Add  value 1 to the variable Income and assigned it into Inc
oj$Inc<-oj$INCOME+1
oj<-mutate(oj,Inc=INCOME+1)
#7. Find the Mean price of juice across brands : 
# and assign the name is 'agg'
agg<-aggregate(oj$price,by=list(oj$brand),mean)

#agg<-group_by(oj,brand)%>% summarize(mean(price))   # dplyr package

#8. Rename the column names as 'Group_wise' , 'avg_price'  in agg variable.
names(agg)<-c("Groupwise","avg_price")

#9. Remove the column price from the data
oj<-select(oj,-price)

##--------------Handling Missing values------------##
#10.Find the missing values in the airquality data set and
#replace the missing values in the column Ozone by the mean value.

data()   # get datasets in R
air<-airquality
sum(is.na(air$Ozone))
air$Ozone[is.na(air$Ozone)]<-mean(air$Ozone,na.rm=TRUE)

summary(air)


#Missing Values ? "NA"
#  Treatment of missing values ? - "AFTER TREATMENT YOU SHOULD HAVE SIZEABLE AMOUNT OF DATA FOR MODELLING"
#                                - "DEFAULT IS IGNORE, If problem - Impute 
#  1) Impute - 
#  2) Ignore - (delete the row having missing value)
#  3) Delete the col having missing values - 

#   I have 10000 records & 20% of records are missing - Impute
#   I have    1   million records & 20% is missing    - Ignore 

# How to check the effectiveness of treatment 
# When to check mean, median and mode ?
# If data is not skewed (not having extreme values) - Mean 
# else check median 
# MODE is only for categories 
