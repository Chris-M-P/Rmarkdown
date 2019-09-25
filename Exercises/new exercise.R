library(BristolVis)
library(finalfit)
library(tidyverse)

ff_glimpse(disease)



explanatory = c("sex_cat", "age", "bmi")
dependent = c("disease_cat")

disease %>% 
  mutate(sex_cat = as_factor(sex),
         disease_cat = as_factor(disease)) %>% 
  finalfit(dependent, explanatory)


explanatory = c("sex_cat", "age", "bmi")
dependent = c("disease_cat")

disease %>% 
  mutate(sex_cat = as_factor(sex),
         disease_cat = as_factor(disease)) %>% 
  finalfit(dependent, explanatory) %>% 
  kable(., row.names = FALSE, align=c("l", "l", "r", "r", "r"))

tbl_bmi <- disease %>% 
  finalfit("bmi", "age")


kable(tbl_bmi, row.names=FALSE, align=c("l", "l", "r", "r", "r"))