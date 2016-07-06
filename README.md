
<img src="kwb_hantush.png" alt="kwb.hantush" />
  
An R package for calculating groundwater mounding beneath an infiltration basin
based on the [Hantush equation, 1967](http://doi.org/10.1029/WR003i001p00227)

[![Build Status](https://travis-ci.org/KWB-R/kwb.hantush.svg?branch=master)](https://travis-ci.org/KWB-R/kwb.hantush)

[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/kwb.hantush)](http://cran.r-project.org/package=kwb.hantush)
[![](http://cranlogs.r-pkg.org/badges/grand-total/kwb.hantush)](http://cran.rstudio.com/web/packages/kwb.hantush/index.html)
[![](http://cranlogs.r-pkg.org/badges/kwb.hantush)](http://cran.rstudio.com/web/packages/kwb.hantush/index.html)
[![](http://cranlogs.r-pkg.org/badges/last-week/kwb.hantush)](http://cran.rstudio.com/web/packages/kwb.hantush/index.html)

Impact factor: [![Research software impact](http://depsy.org/api/package/cran/kwb.hantush/badge.svg)](http://depsy.org/package/r/kwb.hantush)


#Tutorial
##1. Install from GitHub 

```r include=FALSE
if(!require("tutorial")) { install.packages("tutor") }
```

```r
if(!require("devtools")) { install.packages("devtools") }
devtools::install_github(repo = "KWB-R/kwb.hantush", dependencies = TRUE)
```

##2. Using the package 

###2.1 Loading the package

```r
library(kwb.hantush)
```

###2.2 Model validation
 
For comparing the implementation of the [Hantush equation, 1967](http://doi.org/10.1029/WR003i001p00227) the results are 
compared to the [USGS benchmark example (page 25)](http://pubs.usgs.gov/sir/2010/5102/support/sir2010-5102.pdf). The results can be visualised with the following code:

```r
### Comparision of R results to all 
### eight benchmark models in one plot
plotModelComparison()

### Comparision of R results to all 
### eight benchmark models in multiple plots (one plot for each model)
plotModelComparison(layout=c(1,1))
```

## 3. How to perform model runs?

###3.1 Model parameterisation

```r
baseProps <- baseProperties( time = 2^(0:6), ## day, for 6 different times !
                             infiltrationRate = 1, ## meter / day
                             basinWidth = 10, ## meter
                             basinLength = 50, ## meter
                             horizConductivity = 10, ## meter / day
                             iniHead = 10, ## meter
                             specificYield = 0.2)
```

###3.2 Running the model

```r
res <- hantushDistancesBaseProps(baseProps = baseProps)
```

###3.3 Ploting the results

```r
cols <- length(unique(res$dat[[res$changedBaseProp.Name]]))
mainTxt <- sprintf("Changed baseProperty: %s", res$changedBaseProp.Name)
xyplot(WLincrease ~ x,
       groups=res$dat[[res$changedBaseProp.Name]],
       data=res$dat,
       type="b",
       auto.key=list(columns=cols),
       main=mainTxt)

```
