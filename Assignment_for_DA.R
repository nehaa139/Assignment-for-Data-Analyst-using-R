#install.packages("ggpubr")
library("ggpubr")

batteries <- read.csv('C:/Users/Nehaa/Desktop/Imarticus/batteries.csv')
dim(batteries)
str(batteries)
summary(batteries)

# Data preprocessing
is.na(data)     #checking for NA values
library(naniar)
vis_miss(data)   #data is too condensed

colSums(is.na(data))   #checking for NA values coloumnwise

library("ggpubr")

#Correlation test between Grid status and SOC
res <- cor.test(batteries$Grid.status, batteries$SOC, method = "pearson")   
print(res)

#scatter plot between Grid status and SOC
ggscatter(batteries, x = "Grid.status", y = "SOC", 
          color = "red", shape =21, size = 3,  # Points color, shape and size
          add = "reg.line", # Add regressin line
          add.params = list(color = "blue", fill = "lightgray"),  # Customize reg. line
          conf.int = TRUE,   # Add confidence interval
          cor.coef = TRUE,   # Add correlation coefficient
          cor.method = "pearson",
          xlab = "Grid_status", ylab = "SOC", 
          title = "Correlation plot between Grid_status and SOC")  

#The p-value of the test is 2.2e-16, which is less than the significance level alpha = 0.05. 
#We can conclude that Grid_status and SOC are weakly (positively) correlated with a correlation 
#coefficient of 0.2279467 and p-value of 2.2e-16.

#Correlation test between Equivalent cycle and SOH
res <- cor.test(batteries$Equivalent.cycle, batteries$SOH, method = "pearson")   
print(res)

#scatter plot between Equivalent cycle and SOH
ggscatter(batteries, x = "Equivalent.cycle", y = "SOH", 
          color = "brown", shape = 23, size = 1,  # Points color, shape and size
          add = "reg.line", # Add regressin line
          add.params = list(color = "blue", fill = "lightgray"),  # Customize reg. line
          conf.int = TRUE,   # Add confidence interval
          cor.coef = TRUE,   # Add correlation coefficient
          cor.method = "pearson",
          xlab = "Equivalent.cycle", ylab = "SOH", 
          title = "Correlation plot between Equivalet_cycle and SOH")   

#The p-value of the test is 2.2e-16, which is less than the significance level alpha = 0.05. 
#We can conclude that Equivalent_cycle and SOH are strongly (negatively) correlated with a correlation 
#coefficient of -0.9842624 and p-value of 2.2e-16.


#Correlation test between SOC and Temperature
res <- cor.test(batteries$SOC, batteries$Temperature, method = "pearson")   
print(res)

#scatter plot between SOC and Temperature
ggscatter(batteries, x = "SOC", y = "Temperature", 
          color = "green", shape =21, size = 2,  # Points color, shape and size
          add = "reg.line", # Add regressin line
          add.params = list(color = "blue", fill = "lightgray"),  # Customize reg. line
          conf.int = TRUE,   # Add confidence interval
          cor.coef = TRUE,   # Add correlation coefficient
          cor.method = "pearson",
          xlab = "SOC", ylab = "Temprature", 
          title = "Correlation plot between SOC and Temperature")    

#The p-value of the test is 2.2e-16, which is less than the significance level alpha = 0.05. 
#We can conclude that Equivalent_cycle and SOH are weakly (negatively) correlated with a correlation 
#coefficient of -0.3690404 and p-value of 2.2e-16.

