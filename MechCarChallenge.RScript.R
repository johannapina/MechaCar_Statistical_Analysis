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

#Deliverable 3
t.test(SuspensionCoil_data$PSI, mu=1500, conf.level = 0.95)

Lot1<- subset(SuspensionCoil_data, Manufacturing_Lot == "Lot1")
Lot2<- subset(SuspensionCoil_data, Manufacturing_Lot == "Lot2")
Lot3<- subset(SuspensionCoil_data, Manufacturing_Lot == "Lot3")

testlot1 <- t.test(Lot1$PSI, mu=1500, conf.level = 0.95)
testlot2 <- t.test(Lot2$PSI, mu=1500, conf.level = 0.95)
testlot3 <- t.test(Lot3$PSI, mu=1500, conf.level = 0.95)
