#imports
library(dplyr)

# Linear Regression:

#read in csv
mecha_mpg <- read.csv(file="Resources/MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)

#Linear regression using lm() function:
mecha_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_mpg)
#Using summary() to determine p-value and r.squared value:
summary(mecha_lm)


# Suspension Coil Analysis: 
#read csv
sus_coil <- read.csv(file="Resources/Suspension_Coil.csv", check.names = F, stringsAsFactors = F)
head(sus_coil)
#create dataframe for summary:
total_summary <- sus_coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
head(total_summary)
#create lot summaries:
lot_summary <- sus_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
head(lot_summary)

#t.test for suspension coils:
t.test(sus_coil$PSI, mu = 1500)
#individual lot test:
t.test(subset(sus_coil, Manufacturing_Lot="Lot1")$PSI, mu=1500)
t.test(subset(sus_coil, Manufacturing_Lot="Lot2")$PSI, mu=1500)
t.test(subset(sus_coil, Manufacturing_Lot="Lot3")$PSI, mu=1500)
