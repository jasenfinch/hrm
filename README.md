
<!-- README.md is generated from README.Rmd. Please edit that file -->

# hrm

<!-- badges: start -->

[![Lifecycle:
maturing](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://www.tidyverse.org/lifecycle/#maturing)
[![R build
status](https://github.com/jasenfinch/hrm/workflows/R-CMD-check/badge.svg)](https://github.com/jasenfinch/hrm/actions)
[![Coverage
Status](https://img.shields.io/codecov/c/github/jasenfinch/hrm/master.svg)](https://codecov.io/github/jasenfinch/hrm?branch=master)
<!-- badges: end -->

Easily install, load and update an R package ecosystem for performing
analyses of high resolution metabolomics data.

`hrm` packages include:

  - [metaboData](https://github.com/aberHRML/metaboData)
  - [binneR](https://github.com/aberHRML/binneR)
  - [metabolyseR](https://github.com/jasenfinch/metabolyseR)
  - [profilePro](https://github.com/jasenfinch/profilePro)
  - [mzAnnotation](https://github.com/jasenfinch/mzAnnotation)
  - [MFassign](https://github.com/jasenfinch/MFassign)
  - [construction](https://github.com/jasenfinch/construction)
  - [composition](https://github.com/jasenfinch/composition)
  - [riches](https://github.com/jasenfinch/riches)
  - [metaboMisc](https://github.com/jasenfinch/metaboMisc)
  - [metaboWorkflows](https://github.com/jasenfinch/metaboWorkflows)
  - [metaboReports](https://github.com/jasenfinch/metaboReports)

## Installation

Install the `hrm` package from GitHub using:

``` r
remotes::install_github('jasenfinch/hrm')
```

### Usage

Loading the `hrm` packages will load the included R packages.

``` r
library(hrm)
#> ── Attaching packages ───────────────────────────────────────────── hrm 0.8.0 ──
#> ✓ metaboData      0.4.0      ✓ construction    0.2.8 
#> ✓ binneR          2.3.4      ✓ composition     0.1.4 
#> ✓ metabolyseR     0.13.2     ✓ riches          0.2.0 
#> ✓ profilePro      0.6.5      ✓ metaboMisc      0.4.0 
#> ✓ mzAnnotation    1.7.2      ✓ metaboWorkflows 0.8.5 
#> ✓ MFassign        0.7.6      ✓ metaboReports   0.8.2
#> ── Attaching packages ─────────────────────────────────────── tidyverse 1.3.0 ──
#> ✓ tibble  3.0.4     ✓ dplyr   1.0.2
#> ✓ tidyr   1.1.2     ✓ stringr 1.4.0
#> ✓ readr   1.4.0     ✓ forcats 0.5.0
#> ✓ purrr   0.3.4
#> ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
#> x dplyr::collect()    masks xcms::collect()
#> x dplyr::combine()    masks MSnbase::combine(), Biobase::combine(), BiocGenerics::combine()
#> x tidyr::expand()     masks S4Vectors::expand()
#> x dplyr::filter()     masks stats::filter()
#> x dplyr::first()      masks S4Vectors::first()
#> x dplyr::groups()     masks xcms::groups()
#> x dplyr::lag()        masks stats::lag()
#> x ggplot2::Position() masks BiocGenerics::Position(), base::Position()
#> x purrr::reduce()     masks metaboMisc::reduce(), MSnbase::reduce()
#> x dplyr::rename()     masks S4Vectors::rename()
```

Alteratively, these packages can be loaded using the following, without
loading the `hrm` package directly.

``` r
hrm::hrmAttach()
```

A vector of the current `hrm` packages can be found by:

``` r
hrmPackages()
#>  [1] "metaboData"      "binneR"          "metabolyseR"     "profilePro"     
#>  [5] "mzAnnotation"    "MFassign"        "construction"    "composition"    
#>  [9] "riches"          "metaboMisc"      "metaboWorkflows" "metaboReports"
```

`hrm` associated packages can be updated using:

``` r
hrmUpdate()
```
