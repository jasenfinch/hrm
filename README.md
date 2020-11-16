# hrm

<!-- badges: start -->
[![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![R build status](https://github.com/jasenfinch/hrm/workflows/R-CMD-check/badge.svg)](https://github.com/jasenfinch/hrm/actions)
[![Coverage Status](https://img.shields.io/codecov/c/github/jasenfinch/hrm/master.svg)](https://codecov.io/github/jasenfinch/hrm?branch=master)
<!-- badges: end -->

Easily install, load and update R packages for high resolution metabolomics analyses

`hrm` packages include:

* [metaboData](https://github.com/aberHRML/metaboData)
* [binneR](https://github.com/aberHRML/binneR)
* [metabolyseR](https://github.com/jasenfinch/metabolyseR)
* [profilePro](https://github.com/jasenfinch/profilePro)
* [mzAnnotation](https://github.com/jasenfinch/mzAnnotation)
* [MFassign](https://github.com/jasenfinch/MFassign)
*[construction](https://github.com/jasenfinch/construction)
* [metaboMisc](https://github.com/jasenfinch/metaboMisc)
* [metaboWorkflows](https://github.com/jasenfinch/metaboWorkflows)
* [metaboReports](https://github.com/jasenfinch/metaboReports)


### Installation

Install the `hrm` package from GitHub using:

```r
remotes::install_github('jasenfinch/hrm')
```

### Usage

```r
## Return available hrm packages
hrm::hrmPackages()

## Setup hrm packages from scratch
hrm::hrmSetup()

## Install on or more hrm packages
hrm::hrmInstall(hrmPackages()[1])

## Update
hrm::hrmUpdate()

## Load
hrm::hrmAttach()
```
