---
title: "HW1"
author: "Erik Andersen"
date: "2023-10-18"
output: 
  html_document:
    keep_md: yes
---





```r
# Load packages
pacman::p_load(tidyverse, magrittr, here, haven)

# Load data
burk_df = read_dta(here("HW1", "data", "burkina731.dta"))
```


### Question 4


```r
# We're doing this cumbersome method to put the formula in because I thought it was cool, but mostly because I'm lazy and didn't wanna type out all the control variables

# Get vector of all control variables for ease of use
x = c(grep('soil', names(burk_df), value = TRUE), grep('topo', names(burk_df), value = TRUE), grep('loc', names(burk_df), value = TRUE), "lnarea")

# Add village fixed effects
village = c(x, "village*year*fcrop")

# Function that outputs regression formula
formula_generator = function(y = "lnvalue", x){
  a = paste(y, "~", sep = " ")
  paste(a, paste(paste0(x),  collapse = " + "))
}

# Village fixed effects formula
village_formula = formula_generator('lnvalue', village)
# Estimate first regression. 
village_reg = burk_df %>% lm(village_formula,.)
```



```r
# Now add household fixed effects
household = c(x, "hhn*year*fcrop")

# Formula
household_formula = formula_generator('lnvalue', household)
# Regression
household_reg = burk_df %>% lm(household_formula,.)
```


```r
# Graph the density of residuals from each regression
resids = tibble(village = village_reg$residuals, household = household_reg$residuals)

# Graph residuals
resids |> 
  ggplot(aes(village)) +
  geom_density(col = 'red') +
  geom_density(aes(x = household), col = 'blue') + 
  xlab("Deviation from Predicted Yield") +  ylab("Kernel Density Estimate") +
  xlim(-5,5) + 
  ggtitle("Estimates of Yield Function Error Terms") + 
  cowplot::theme_cowplot()
```

```
## Warning: Removed 15 rows containing non-finite values (`stat_density()`).
## Removed 15 rows containing non-finite values (`stat_density()`).
```

![](HW1_files/figure-html/unnamed-chunk-4-1.png)<!-- -->

```r
# Test if distributions are different using KS test
with(resids, ks.test(village, household)) # Fail to reject
```

```
## 
## 	Asymptotic two-sample Kolmogorov-Smirnov test
## 
## data:  village and household
## D = 0.0089286, p-value = 1
## alternative hypothesis: two-sided
```

### Question 5


```r
# Add log of hh size of other plots to data
hhsize = c("lnhhsize", x, "village*year*fcrop")

# Formula
hhsize_formula = formula_generator('lnvalue', hhsize)
# Run regression
other_reg = burk_df %>% lm(hhsize_formula,.)
summary(other_reg)
```

```
## 
## Call:
## lm(formula = hhsize_formula, data = .)
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -6.7329 -0.5011  0.1687  0.7196  4.2427 
## 
## Coefficients:
##                     Estimate Std. Error t value Pr(>|t|)    
## (Intercept)         2.063727   0.350555   5.887 4.53e-09 ***
## lnhhsize            0.185166   0.044229   4.187 2.94e-05 ***
## soil7              -0.186914   0.149374  -1.251 0.210951    
## soil21              0.618712   0.163735   3.779 0.000162 ***
## soil31              0.345674   0.125421   2.756 0.005897 ** 
## soil32              0.338731   0.127158   2.664 0.007781 ** 
## soil33              0.579736   0.211183   2.745 0.006096 ** 
## soil37              0.612116   0.182337   3.357 0.000801 ***
## soil35              0.546698   0.288275   1.896 0.058030 .  
## soil45              0.316251   0.131967   2.396 0.016637 *  
## soil51              0.310378   0.102179   3.038 0.002412 ** 
## soil1               0.946821   0.383383   2.470 0.013599 *  
## soil3              -0.111589   0.142377  -0.784 0.433264    
## soil11             -0.891218   0.209148  -4.261 2.12e-05 ***
## soil12             -0.007468   0.198322  -0.038 0.969965    
## soil13              0.301525   0.234428   1.286 0.198501    
## soil34             -0.399970   0.385273  -1.038 0.299313    
## soil46              0.110603   0.265431   0.417 0.676942    
## soil53              0.351797   0.234912   1.498 0.134386    
## topo1              -0.501576   0.159624  -3.142 0.001699 ** 
## topo2              -0.421098   0.142082  -2.964 0.003071 ** 
## topo3              -0.432155   0.139523  -3.097 0.001977 ** 
## topo4              -0.212691   0.144164  -1.475 0.140263    
## loc1                0.285775   0.088637   3.224 0.001282 ** 
## loc2                0.184032   0.065393   2.814 0.004932 ** 
## lnarea              0.799938   0.021369  37.434  < 2e-16 ***
## village             0.080846   0.069357   1.166 0.243883    
## year                0.046416   0.120525   0.385 0.700191    
## fcrop               0.061854   0.041402   1.494 0.135320    
## village:year        0.013708   0.027579   0.497 0.619191    
## village:fcrop      -0.004135   0.007459  -0.554 0.579382    
## year:fcrop          0.008654   0.019373   0.447 0.655147    
## village:year:fcrop -0.003114   0.003549  -0.877 0.380329    
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
## Residual standard error: 1.285 on 2237 degrees of freedom
##   (306 observations deleted due to missingness)
## Multiple R-squared:  0.5173,	Adjusted R-squared:  0.5104 
## F-statistic: 74.91 on 32 and 2237 DF,  p-value: < 2.2e-16
```













































