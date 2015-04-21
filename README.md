
<img src="kwb_hantush.png" alt="kwb.hantush" />
  
An R package for calculating groundwater mounding beneath a (stormwater) infiltration basin

[![Build Status](https://travis-ci.org/mrustl/kwb.hantush.svg)](https://travis-ci.org/mrustl/kwb.hantush)

Implementing Hantush's analytical equation for estimating groundwater mounding in 
R 

# Install from GitHub 
```
if(!require("devtools")) { install.packages("devtools") }
devtools::install_github(repo = "KWB-R/kwb.hantush", dependencies = TRUE)
```

# Using the package 

## Loading the package
```
library(kwb.hantush)

## Validation
 
For checking the correct implementation of the Hantush equation we selected the 
same parameterisation as in the [USGS report](http://pubs.usgs.gov/sir/2010/5102/support/sir2010-5102.pdf) on page 22.  

```
### Comparision of R results to all eight benchmark models in one plot
plotModelComparison()

### Comparision of R results to all eight benchmark models in multiple plots (one plot for each model)
plotModelComparison(layout=c(1,1))
```

## How to perform own model runs=

### Parameterising the model
```
baseProps <- baseProperties( time = 2^(0:6),
                             infiltrationRate = 1,
                             basinWidth = 10,
                             basinLength = 50,
                             horizConductivity = 10,
                             iniHead = 10,
                             specificYield = 0.2)
```
### Run the model
```
res <- hantushDistancesBaseProps(baseProps = baseProps)
```
### Ploting the results
```
cols <- length(unique(res$dat[[res$changedBaseProp.Name]]))
mainTxt <- sprintf("Changed baseProperty: %s", res$changedBaseProp.Name)
xyplot(WLincrease ~ x,
       groups=res$dat[[res$changedBaseProp.Name]],
       data=res$dat,
       type="b",
       auto.key=list(columns=cols),
       main=mainTxt)

```
