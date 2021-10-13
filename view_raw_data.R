

library(tidyverse)
library(magrittr)

## load data by
## open data file with RStudio automatic data input
## or
## equivalently ...
## 

strawb <- read.csv('strawberry2021-oct7-c.csv')

##################################################
## Drop the no-info columns
##################################

## capture column names
cnames <- colnames(strawb)


x <- 1:dim(strawb)[2]

## use this probe to reduce the number of columns

colsummary <-  sapply(x, names <- function(x){a = nrow(distinct(strawb, strawb[x])) 
                return(a)})
  
drop_cols <- cnames[which(colsummary == 1)]
                         

### could we use purrr here?


strawb %<>% select(!all_of(drop_cols))

#############################################################
## before you do anything else, 
## make sure you understand the content of the 10 colums that remain.

##########################################################
### Data.item



###  The code I ran to sort it out
#
# strawb1 <- strawb %>% separate(col=Data.Item, 
#                                into = c("Strawberries", "items", "discription", "units"), 
#                                sep = ",", 
#                                fill = "right")


strawb %<>% separate(col=Data.Item,
                into = c("Strawberries", "items", "discription", "units"),
                sep = ",",
                fill = "right")


distinct(strawb, Strawberries)

distinct(strawb, items)

distinct(strawb, discription)

distinct(strawb, units)
  

################################################


################ Solution

# set variable to collect values

T <- NULL

# collect number of unique rows in each column

for (i in x) {
  T <- c(T, dim(unique(strawb[i]))[1])
}

unique(strawb[4])

