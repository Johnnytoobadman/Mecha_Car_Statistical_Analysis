# load the "dbplyr" and "tidyverse" libraries
library(dbplyr)
library(tidyverse)

# read MechaCar_mpg.csv into Dataframe
MechaCar <- read.csv(file = 'MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)

# perform linear regression statistics on all six variables
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar) 

# run summary statistics on all six variables
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar)) 

# read Suspension_Coil.csv file into the Dataframe
SuspCoil <- read.csv(file = 'Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

# create summary statistics on entire dataframe
total_summary <- SuspCoil %>% summarize(mean(PSI),median(PSI),var(PSI), sd(PSI), .groups = 'keep')

# create lot summary statstics by Lot
lot_summary <- SuspCoil %>% group_by(Manufacturing_Lot) %>% summarize(mean(PSI),median(PSI),var(PSI), sd(PSI), .groups= 'keep')

# perform t-tests to determine if each lot individually is different from the population mean of 1500
t.test(SuspCoil$PSI,mu=1500)
t.test(subset(SuspCoil$PSI,SuspCoil$Manufacturing_Lot=='Lot1'),mu=1500)
t.test(subset(SuspCoil$PSI,SuspCoil$Manufacturing_Lot=='Lot2'),mu=1500)
t.test(subset(SuspCoil$PSI,SuspCoil$Manufacturing_Lot=='Lot3'),mu=1500)