#### This file runs the regression of interest
here::i_am("HW2/analysis.R")

pacman::p_load(tidyverse, feather, fixest)


# Load data
nigeria_df = read_feather(here::here("HW2", "data", "generated-data", "nigeria.feather"))
nigeria_area_df = read_feather(here::here("HW2", "data", "generated-data", "nigeria-area.feather"))


# Run regression
fixest::feols(yield ~ sex | hh_year_crop, nigeria_df) 
fixest::feols(yield_area ~ sex | hh_year_crop, nigeria_area_df)
fixest::feols(yield ~ sex + area | hh_year_crop, nigeria_area_df)

# Simple mean comparison
nigeria_df |> group_by(sex) |> summarise(yield = mean(yield))
nigeria_area_df |> group_by(sex) |> summarise(yield = mean(yield))
