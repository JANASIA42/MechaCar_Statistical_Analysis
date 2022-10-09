library(dplyr)
library(tidyverse)
mecha_df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD
,data=mecha_df) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD
           ,data=mecha_df))

coil_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

total_summary <- coil_table %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),StdDev=sd(PSI))
head(total_summary)

lot_summary <- coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

head(lot_summary)

# T-tests on suspension coils
t.test(coil_table$PSI, mu=1500)

t.test(subset(coil_table,Manufacturing_Lot=="Lot1")$PSI, mu = 1500)
t.test(subset(coil_table,Manufacturing_Lot=="Lot2")$PSI, mu = 1500)
t.test(subset(coil_table,Manufacturing_Lot=="Lot3")$PSI, mu = 1500)
