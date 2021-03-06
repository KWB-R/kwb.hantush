[![Appveyor build status](https://ci.appveyor.com/api/projects/status/se4kj23k9pp16wut/branch/master?svg=true)](https://ci.appveyor.com/project/KWB-R/kwb-hantush/branch/master)
[![Build Status](https://travis-ci.org/KWB-R/kwb.hantush.svg?branch=master)](https://travis-ci.org/KWB-R/kwb.hantush)
[![codecov](https://codecov.io/github/KWB-R/kwb.hantush/branch/master/graphs/badge.svg)](https://codecov.io/github/KWB-R/kwb.hantush)
[![lifecycle](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://www.tidyverse.org/lifecycle/#stable)
[![Dependencies](https://tinyverse.netlify.com/badge/kwb.hantush)](https://cran.r-project.org/package=kwb.hantush)
[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/kwb.hantush)](http://cran.r-project.org/package=kwb.hantush)
[![](http://cranlogs.r-pkg.org/badges/grand-total/kwb.hantush)](http://cran.rstudio.com/web/packages/kwb.hantush/index.html)
[![](http://cranlogs.r-pkg.org/badges/kwb.hantush)](http://cran.rstudio.com/web/packages/kwb.hantush/index.html)
[![](http://cranlogs.r-pkg.org/badges/last-week/kwb.hantush)](http://cran.rstudio.com/web/packages/kwb.hantush/index.html)
[![Research software impact](http://depsy.org/api/package/cran/kwb.hantush/badge.svg)](http://depsy.org/package/r/kwb.hantush)
[![DOI](https://zenodo.org/badge/23293/KWB-R/kwb.hantush.svg)](https://zenodo.org/badge/latestdoi/23293/KWB-R/kwb.hantush)


An R package for calculating groundwater mounding beneath an infiltration basin based on the [Hantush equation, 1967](https://doi.org/10.1029/WR003i001p00227). 


## Installation

For details on how to install KWB-R packages checkout our [installation tutorial](https://kwb-r.github.io/kwb.pkgbuild/articles/install.html).

```r
### Optionally: specify GitHub Personal Access Token (GITHUB_PAT)
### See here why this might be important for you:
### https://kwb-r.github.io/kwb.pkgbuild/articles/install.html#set-your-github_pat

# Sys.setenv(GITHUB_PAT = "mysecret_access_token")

# Install package "remotes" from CRAN
if (! require("remotes")) {
  install.packages("remotes", repos = "https://cloud.r-project.org")
}

# Install KWB package 'kwb.hantush' from GitHub

remotes::install_github("kwb-r/kwb.hantush")
```


## Further Documentation

Please have a look at the following two [articles](articles/index.html):

1.  **[Tutorial](articles/tutorial.html)**: for using the R package

2.  **[Shiny App](articles/shiny-app.html)**: for interactively "exploring" the impact of the different input model parameters on the groundwater mounding

## Recommended Literature 

The [USGS](https://www.usgs.gov/) report ['Simulation of Groundwater Mounding Beneath Hypothetical Stormwater Infiltration Basins'](https://pubs.usgs.gov/sir/2010/5102/support/sir2010-5102.pdf) by [Carleton (2010)](https://pubs.usgs.gov/sir/2010/5102/) provides more background information on the Hantush calculation and also compares it to alternative approaches. In order to validate the calculation accuracy of the R package `kwb.hantush` it is benchmarked against these solutions [here](articles/tutorial.html#model-validation).