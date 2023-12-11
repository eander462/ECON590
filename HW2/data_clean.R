# This file imports the relevant data sets, cleans them, and then writes a file to be used in analysis

here::i_am("HW2/data_clean.R")

pacman::p_load(tidyverse, magrittr, feather)


#### Load data #################################
# Load harvest data
# sa3q6a is outcome variable of interest. Contains "Quantity harvested since last interview (quantity)"
harvest_2010_11_df = read_csv(here::here("HW2", "data", "2010-11", "Post\ Harvest\ Wave\ 1", "Agriculture", "secta3_harvestw1.csv"))
# sa3q6a1
harvest_2012_13_df = read_csv(here::here("HW2", "data", "2012-13", "Post\ Harvest\ Wave\ 2", "Agriculture", "secta3_harvestw2.csv"))
# sa3iq6i
harvest_2015_16_df = read_csv(here::here("HW2", "data", "2015-16", "secta3i_harvestw3.csv"))
harvest_2018_19_df = read_csv(here::here("HW2", "data", "2018-19", "secta3i_harvestw4.csv"))



# Load gender data
# s1q2 is sex variable
sex_2010_11_df = read_csv(here::here("HW2", "data", "2010-11", "Post\ Harvest\ Wave\ 1", "Household", "sect1_harvestw1.csv"))
sex_2012_13_df = read_csv(here::here("HW2", "data", "2012-13", "Post\ Harvest\ Wave\ 2", "Household", "sect1_harvestw2.csv"))
sex_2015_16_df = read_csv(here::here("HW2", "data", "2015-16", "sect1_harvestw3.csv"))
sex_2018_19_df = read_csv(here::here("HW2", "data", "2018-19", "sect1_harvestw4.csv"))


# Load data for plot ownership
# sa1q2 is owner variable
owner_2010_11_df = read_csv(here::here("HW2", "data", "2010-11", "Post\ Harvest\ Wave\ 1", "Agriculture", "secta1_harvestw1.csv"))
owner_2012_13_df = read_csv(here::here("HW2", "data", "2012-13", "Post\ Harvest\ Wave\ 2", "Agriculture", "secta1_harvestw2.csv"))
owner_2015_16_df = read_csv(here::here("HW2", "data", "2015-16", "secta1_harvestw3.csv"))
owner_2018_19_df = read_csv(here::here("HW2", "data", "2018-19", "secta1_harvestw4.csv"))



##################################################



#### Clean data ###################################

# Clean harvest
# Select only the columns of interest from harvest data, then add the year
# Drop nas
# Columns of interest are crop id, the quantity harvested the name of which varies by dataset
# We can't control for area because only the first two surveys seem to have collected data on plot area
# I'm using a helper function defined in functions file
source(here::here("HW2", "functions.R"))

harvest_2010_11_df %<>% clean_harvest(outcome_var = sa3q6a, cropid = sa3q2, year = 2010)
harvest_2012_13_df %<>% clean_harvest(outcome_var = sa3q6a1, cropid = cropcode, year = 2012)
harvest_2015_16_df %<>% clean_harvest(outcome_var = sa3iq6i, cropid = cropcode, 2015)
harvest_2018_19_df %<>% clean_harvest(outcome_var = sa3iq6i, cropid = cropcode, 2018)

# Stack together into one dataset
harvest_df = bind_rows(harvest_2010_11_df, harvest_2012_13_df, harvest_2015_16_df, harvest_2018_19_df)
rm(harvest_2010_11_df)
rm(harvest_2012_13_df)
rm(harvest_2015_16_df)
rm(harvest_2018_19_df)
###



# Clean sex
# Select only columns of interest and drop nas
# Columns of interest are household id, and sex
# Relable sex outcome as m or f
sex_2010_11_df %<>% clean_sex(sex = s1q2, year = 2010, individualid = indiv)
sex_2012_13_df %<>% clean_sex(sex = s1q2, year = 2012, individualid = indiv)
sex_2015_16_df %<>% clean_sex(sex = s1q2, year = 2015, individualid = indiv)
sex_2018_19_df %<>% clean_sex(sex = s1q2, year = 2018, individualid = indiv)

# Stack together into one dataset
sex_df = bind_rows(sex_2010_11_df, sex_2012_13_df, sex_2015_16_df, sex_2018_19_df)
rm(sex_2010_11_df)
rm(sex_2012_13_df)
rm(sex_2015_16_df)
rm(sex_2018_19_df)
###

# Clean owner
# select householdid, plotid, area, and ownerid
owner_2010_11_area_df = owner_2010_11_df |>  clean_owner_area(owner = sa1q2, year = 2010, area = sa1q9a)
owner_2012_13_area_df = owner_2012_13_df |> clean_owner_area(owner = sa1q2, year = 2012, area = sa1q9a)
owner_2015_16_area_df = owner_2015_16_df |> clean_owner_area(owner = sa1q2, year = 2015, area = sa1q9a)
owner_2018_19_area_df = owner_2018_19_df |> clean_owner_area(owner = sa1q2, year = 2018, area = sa1q11)

# Make into one dataset
owner_area_df = bind_rows(owner_2010_11_area_df, owner_2012_13_area_df, owner_2015_16_area_df, owner_2018_19_area_df)
rm(owner_2010_11_area_df)
rm(owner_2012_13_area_df)
rm(owner_2015_16_area_df)
rm(owner_2018_19_area_df)

# Make data set without area because of selection effects
owner_2010_11_df %<>% clean_owner(owner = sa1q2, year = 2010)
owner_2012_13_df %<>% clean_owner(owner = sa1q2, year = 2012)
owner_2015_16_df %<>% clean_owner(owner = sa1q2, year = 2015)
owner_2018_19_df %<>% clean_owner(owner = sa1q2, year = 2018)

owner_df = bind_rows(owner_2010_11_df, owner_2012_13_df, owner_2015_16_df, owner_2018_19_df)
rm(owner_2010_11_df)
rm(owner_2012_13_df)
rm(owner_2015_16_df)
rm(owner_2018_19_df)
####



# Merge into final data set including area
# First merge harvest with owner
temp_df = left_join(harvest_df, owner_area_df, by = c("year", "plotid", "hhid"))
# Now merge with sex
nigeria_area_df = left_join(temp_df, sex_df, by = c("year", "hhid", "indiv"))
rm(temp_df)
rm(owner_area_df)

# Make appropriate variables into factors
nigeria_area_df = clean_final(nigeria_area_df)
# Add yield per area
nigeria_area_df = nigeria_area_df |> 
  mutate(yield_area = yield / area)

# Final dataset without area
temp_df = left_join(harvest_df, owner_df, by = c("year", "plotid", "hhid"))
nigeria_df = left_join(temp_df, sex_df, by = c("year", "hhid", "indiv"))

# Make appropriate variables into factors
nigeria_df = clean_final(nigeria_df)
rm(owner_df)
rm(sex_df)
rm(temp_df)
rm(harvest_df)
###########################################################


#### Write to file #########################################
write_feather(nigeria_area_df, here::here("HW2", "data", "generated-data", "nigeria-area.feather"))
write_feather(nigeria_df, here::here("HW2", "data", "generated-data", "nigeria.feather"))

