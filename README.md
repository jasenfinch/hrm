# hrm

[![Travis-CI Build Status](https://travis-ci.org/jasenfinch/hrm.svg?branch=master)](https://travis-ci.org/jasenfinch/hrm) [![Coverage Status](https://img.shields.io/codecov/c/github/jasenfinch/hrm/master.svg)](https://codecov.io/github/jasenfinch/hrm?branch=master)

Easily install, load and update R packages for high resolution metabolomics analyses

`hrm` packages include:

* [FIEmspro](https://github.com/wilsontom/FIEmspro)
* [metaboData](https://github.com/jasenfinch/metaboData)
* [binneR](https://github.com/jasenfinch/binneR)
* [binneRlyse](https://github.com/jasenfinch/binneRlyse)
* [mzAnnotation](https://github.com/jasenfinch/mzAnnotation)
* [MFassign](https://github.com/jasenfinch/MFassign)
* [profilePro](https://github.com/jasenfinch/profilePro)
* [metabolyseR](https://github.com/jasenfinch/metabolyseR)
* [metaboWorkflows](https://github.com/jasenfinch/metaboWorkflows)
* [metaboVis](https://github.com/jasenfinch/metaboVis)
* [metaboReports](https://github.com/jasenfinch/metaboReports)

### Installation

```r
devtools::install_github('jasenfinch/hrm')
```

### Usage

```r
## Install
hrm::hrmSetup()

## Update
hrm::hrmUpdate()

## Load
hrm::hrmAttach()

```