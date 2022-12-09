#imports
library(dplyr)

#read in csv
mecha_mpg <- read.csv(file="Resources/MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)

#Linear regression using lm() function:
mecha_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_mpg)
#Using summary() to determine p-value and r.squared value:
summary(mecha_lm)