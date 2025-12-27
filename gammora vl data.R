### Get Gammora Study BL and V7 Viral Loads ###
### Author: James Hunter ###
### Date: 2025-12-27 ###
### 
### Description: This script retrieves viral load data from the Gammora Study for both BL and V6 & V7 time points.
### 

pacman::p_load(tidyverse, janitor)

# Load Data
data <- readRDS("/Users/jameshunter/Documents/Code Pharma/proj_start/data/gammora_tests11112025.rds")

# baseline vl
vlbl <- data |> 
  filter(visit == "V-3") |> 
  select(vl) |> 
  pull()
summary(vlbl)
sd(vlbl)

#  V6 - restricted to treatment arm
vlv6 <- data |> 
  filter(visit == "V6" & cc == "case") |> 
  select(vl) |> 
  pull()
summary(vlv6)
sd(vlv6)

length(!is.na(vlv6))
