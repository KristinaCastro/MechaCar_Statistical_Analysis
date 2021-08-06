library(tidyverse)
library("dplyr")
MechaCar_table <-read_csv('MechaCar_mpg.csv')
head(MechaCar_table)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_table )#generate multiple linear reg model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_table ))#generate summary statistics

SuspensionCoil_table <-read_csv('Suspension_Coil.csv')
total_summary <- SuspensionCoil_table %>% summarize(mean = mean (PSI), median = median(PSI), var = var(PSI), sd = sd(PSI))
total_summary

lot_summary <- SuspensionCoil_table %>%  group_by(Manufacturing_Lot) %>% summarize(mean = mean (PSI), median = median(PSI), var = var(PSI), sd = sd(PSI))
lot_summary

t.test(SuspensionCoil_table$PSI, mu=1500) #Determine if PSI is statistically different from the population mean of 1500 across all Manu_Lots
t.test(subset(SuspensionCoil_table,Manufacturing_Lot == 'Lot1')$PSI, mu=1500) #determine if the PSI for each mfg_lot is statistically different from the population mean of 1500 lbs. per square inch.
t.test(subset(SuspensionCoil_table,Manufacturing_Lot == 'Lot2')$PSI, mu=1500) #determine if the PSI for each mfg_lot is statistically different from the population mean of 1500 lbs. per square inch.
t.test(subset(SuspensionCoil_table,Manufacturing_Lot == 'Lot3')$PSI, mu=1500) #determine if the PSI for each mfg_lot is statistically different from the population mean of 1500 lbs. per square inch.
