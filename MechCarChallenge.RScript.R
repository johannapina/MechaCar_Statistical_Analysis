#Deliverable 1
library(dplyr)

MechCar_data <- read.csv('MechaCar_mpg.csv')

lm(mpg ~ vehicle_length + spoiler_angle + ground_clearance + AWD + vehicle_weight, data= MechCar_data)

summary(lm(mpg ~ vehicle_length + spoiler_angle + ground_clearance + AWD + vehicle_weight, data= MechCar_data))

#Deliverable 2
SuspensionCoil_data <- read.csv('Suspension_Coil.csv')

total_summary<- summarize(SuspensionCoil_data, Mean = mean(PSI),
          Median = median(PSI),
          Variance = var(PSI), 
          SD = sd(PSI))

by_lots<- group_by(SuspensionCoil_data, Manufacturing_Lot)

lot_summary<- summarize(by_lots, Mean = mean(PSI),
                        Median = median(PSI),
                        Variance = var(PSI), 
                        SD = sd(PSI))
                        
