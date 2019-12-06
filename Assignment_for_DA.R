#install.packages("ggpubr")
library("ggpubr")

batteries <- read.csv('C:/Users/Nehaa/Desktop/Imarticus/batteries.csv')

library("ggpubr")

#Correlation between Grid status and SOC
ggscatter(batteries, x = "Grid.status", y = "SOC", 
          color = "red", shape =21, size = 2,  # Points color, shape and size
          add = "reg.line", # Add regressin line
          add.params = list(color = "blue", fill = "lightgray"),  # Customize reg. line
          conf.int = TRUE,   # Add confidence interval
          cor.coef = TRUE,   # Add correlation coefficient
          cor.method = "pearson",
          xlab = "Grid_status", ylab = "SOC", title = "Correlation plot between Grid_status and SOC")  #scatter plot between Grid status and SOC

res <- cor.test(batteries$Grid.status, batteries$SOC, method = "pearson")   #Correlation test between Grid status and SOC
print(res)

#Correlation between Equivalent cycle and SOH
ggscatter(batteries, x = "Equivalent.cycle", y = "SOH", 
          color = "brown", shape = 23, size = 1,  # Points color, shape and size
          add = "reg.line", # Add regressin line
          add.params = list(color = "blue", fill = "lightgray"),  # Customize reg. line
          conf.int = TRUE,   # Add confidence interval
          cor.coef = TRUE,   # Add correlation coefficient
          cor.method = "pearson",
          xlab = "Equivalent.cycle", ylab = "SOH", title = "Correlation between Equivalet_cycle and SOH")   #scatter plot between Equivalent cycle and SOH


res <- cor.test(batteries$Equivalent.cycle, batteries$SOH, method = "pearson")   #Correlation test between Equivalent cycle and SOH
print(res)


#Correlation between Grid status and SOC
ggscatter(batteries, x = "SOC", y = "Temperature", 
          color = "green", shape =21, size = 2,  # Points color, shape and size
          add = "reg.line", # Add regressin line
          add.params = list(color = "blue", fill = "lightgray"),  # Customize reg. line
          conf.int = TRUE,   # Add confidence interval
          cor.coef = TRUE,   # Add correlation coefficient
          cor.method = "pearson",
          xlab = "SOC", ylab = "Temprature", title = "Correlation between SOC and Temperature")    #scatterplot between Temperature and SOC

res <- cor.test(batteries$SOC, batteries$Temperature, method = "pearson")   
print(res)
