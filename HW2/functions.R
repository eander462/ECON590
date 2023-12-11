## This file provides helper functions
here::i_am("HW2/functions.R")



pacman::p_load(tidyverse)


# Clean the data sets containing data on harvest
clean_harvest = function(data, outcome_var, cropid, year){
  data = data |> 
    select({{ outcome_var }}, {{ cropid }}, hhid, plotid) |>
    rename(yield = {{ outcome_var }},
           cropnum = {{ cropid }}) |> 
    mutate(year = {{ year }}) |> 
    relocate(hhid, year, everything()) |> 
    drop_na()
  return(data)
}


# Clean data for sex variables
clean_sex = function(data, sex, year, individualid){
  data = data |> 
    select(hhid, {{ sex }}, {{ individualid }}) |> 
    rename(sex = {{ sex }}) |> 
    mutate(year = year) |> 
    drop_na()
  return(data)
}


# Clean owner data. Include area
clean_owner_area = function(data, owner, year, area){
  data = data |> 
    select(hhid, plotid, {{ owner }}, {{ area }}) |> 
    rename(indiv = {{ owner }},
           area = {{ area }}) |> 
    mutate(year = year) |> 
    drop_na()
  return(data)
}


# Clean owner data. Don't include area. The area question drops about 30000 observations, so its useful to run the analysis with and without it 
clean_owner = function(data, owner, year){
  data = data |> 
    select(hhid, plotid, {{ owner }}) |> 
    rename(indiv = {{ owner }}) |> 
    mutate(year = year) |> 
    drop_na()
  return(data)
}

# Final adjustments
clean_final = function(data){
  data = data |> mutate(hhid = as.factor(hhid),
                       year = as.factor(year),
                       cropnum = as.factor(cropnum),
                       plotid = as.factor(plotid),
                       hh_year_crop = hhid:year:cropnum,
                       sex = if_else(sex == 1, "M", "F"),
                       sex = as.factor(sex))
  return(data)
}
