library("dplyr")
library("dplyr")
library("dplyr")
head(MechaCar_table)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_table )#generate multiple linear reg model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_table ))#generate summary statistics
