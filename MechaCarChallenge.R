# deliverable 1
library(dplyr)
mecha_car_data <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
library(tidyverse)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle +
             ground_clearance + AWD, data=mecha_car_data))

#deliverable 2
suspension_coil_data <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
total_summary <- suspension_coil_data %>% summarize( Mean = mean(PSI),
                                        Median = median(PSI),
                                        Variance = var(PSI),
                                        SD = sd(PSI))
lot_summary <- suspension_coil_data %>% 
  group_by(Manufacturing_Lot) %>% 
  summarize( Mean = mean(PSI),
             Median = median(PSI),
             Variance = var(PSI),
             SD = sd(PSI))
#deliverable 3
t.test(suspension_coil_data$PSI, mu=1500)
lot1 <- subset(suspension_coil_data, Manufacturing_Lot=='Lot1')
t.test(lot1$PSI, mu=1500)
lot2 <- subset(suspension_coil_data, Manufacturing_Lot=='Lot2')
t.test(lot2$PSI, mu=1500)
lot3 <- subset(suspension_coil_data, Manufacturing_Lot=='Lot3')
t.test(lot3$PSI, mu=1500)
