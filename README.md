# hrm

[![Travis-CI Build Status](https://travis-ci.org/jasenfinch/hrm.svg?branch=master)](https://travis-ci.org/jasenfinch/hrm) 
[![AppVeyor build status](https://ci.appveyor.com/api/projects/status/github/jasenfinch/hrm?branch=master&svg=true)](https://ci.appveyor.com/project/jasenfinch/hrm)
[![Coverage Status](https://img.shields.io/codecov/c/github/jasenfinch/hrm/master.svg)](https://codecov.io/github/jasenfinch/hrm?branch=master)

Easily install, load and update R packages for high resolution metabolomics analyses

`hrm` packages include:

* [metaboData](https://github.com/aberHRML/metaboData)
* [binneR](https://github.com/aberHRML/binneR)
* [mzAnnotation](https://github.com/jasenfinch/mzAnnotation)
* [MFassign](https://github.com/jasenfinch/MFassign)
* [profilePro](https://github.com/jasenfinch/profilePro)
* [metabolyseR](https://github.com/jasenfinch/metabolyseR)
* [metaboWorkflows](https://github.com/jasenfinch/metaboWorkflows)
* [metaboReports](https://github.com/jasenfinch/metaboReports)
* [metaboMisc](https://github.com/jasenfinch/metaboMisc)

### Installation

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
