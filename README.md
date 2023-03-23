
<!-- README.md is generated from README.Rmd. Please edit that file -->

# hrm

<!-- badges: start -->

[![Lifecycle:
stable](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://lifecycle.r-lib.org/articles/stages.html#stable)
[![R-CMD-check](https://github.com/jasenfinch/hrm/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/jasenfinch/hrm/actions/workflows/R-CMD-check.yaml)
[![Codecov test
coverage](https://codecov.io/gh/jasenfinch/hrm/branch/master/graph/badge.svg)](https://app.codecov.io/gh/jasenfinch/hrm?branch=master)
[![GitHub
release](https://img.shields.io/github/release/jasenfinch/hrm.svg)](https://GitHub.com/jasenfinch/hrm/releases/)
<!-- badges: end -->

Easily install, load and update an R package ecosystem for performing
analyses of high resolution metabolomics data.

`hrm` packages include:

- [metaboData](https://aberhrml.github.io/metaboData) - Example data
  sets for metabolomics analyses
- [grover](https://jasenfinch.github.io/grover) - Web API Framework for
  Mass Spectrometry Data Transfer
- [binneR](https://aberhrml.github.io/binneR) - Spectral Processing for
  High Resolution Flow Infusion Mass Spectrometry
- [metabolyseR](https://jasenfinch.github.io/metabolyseR) - A tool kit
  for pre-treatment, modelling, feature selection and correlation
  analyses of metabolomics data
- [profilePro](https://jasenfinch.github.io/profilePro) - Unified Input
  and Output for Processing of Metabolomic Profiling Experiments
- [mzAnnotation](https://aberhrml.github.io/mzAnnotation) - Tools for
  putative annotation of accurate m/z from electrospray ionisation mass
  spectrometry data
- [assignments](https://aberhrml.github.io/assignments) - Molecular
  formula assignment for high resolution ESI metabolomics
- [construction](https://jasenfinch.github.io/construction) - Consensus
  structural classifications for putative molecular formula assignments
- [riches](https://jasenfinch.github.io/riches) - Structural and
  functional enrichment for metabolomics data
- [metaboMisc](https://jasenfinch.github.io/metaboMisc) - A collection
  of miscellaneous helper and linker functions for metabolomics analyses
- [metaboWorkflows](https://jasenfinch.github.io/metaboWorkflows) -
  Workflow Project Templates for Metabolomics Analyses

## Installation

Install the `hrm` package from GitHub using:

``` r
remotes::install_github('jasenfinch/hrm')
```

### Usage

Loading the `hrm` packages will load the included R packages.

``` r
library(hrm)
#> ── Attaching packages ───────────────────────────────────────────── hrm 0.9.2 ──
#> ✔ chunky           0.1.1   ✔ projecttemplates 0.6.1 
#> ✔ metaboData       0.6.3   ✔ grover           1.1.3 
#> ✔ binneR           2.6.3   ✔ metabolyseR      0.15.0
#> ✔ profilePro       0.8.2   ✔ mzAnnotation     2.0.0 
#> ✔ assignments      1.0.0   ✔ construction     0.3.0 
#> ✔ riches           0.3.0   ✔ metaboMisc       0.6.1 
#> ✔ metaboWorkflows  0.10.0
#> ── Attaching core tidyverse packages ──────────────────────── tidyverse 2.0.0 ──
#> ✔ dplyr     1.1.1     ✔ readr     2.1.4
#> ✔ forcats   1.0.0     ✔ stringr   1.5.0
#> ✔ ggplot2   3.4.1     ✔ tibble    3.2.1
#> ✔ lubridate 1.9.2     ✔ tidyr     1.3.0
#> ✔ purrr     1.0.1     
#> ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
#> ✖ dplyr::collect()      masks xcms::collect()
#> ✖ dplyr::combine()      masks MSnbase::combine(), Biobase::combine(), BiocGenerics::combine()
#> ✖ tidyr::expand()       masks S4Vectors::expand()
#> ✖ dplyr::filter()       masks stats::filter()
#> ✖ dplyr::first()        masks S4Vectors::first()
#> ✖ dplyr::glimpse()      masks tibble::glimpse(), metaboWorkflows::glimpse()
#> ✖ dplyr::groups()       masks xcms::groups()
#> ✖ dplyr::lag()          masks stats::lag()
#> ✖ ggplot2::Position()   masks BiocGenerics::Position(), base::Position()
#> ✖ purrr::reduce()       masks metaboMisc::reduce(), MSnbase::reduce()
#> ✖ dplyr::rename()       masks S4Vectors::rename()
#> ✖ lubridate::second()   masks S4Vectors::second()
#> ✖ lubridate::second<-() masks S4Vectors::second<-()
#> ℹ Use the conflicted package (<http://conflicted.r-lib.org/>) to force all conflicts to become errors
```

Alteratively, these packages can be loaded using the following, without
loading the `hrm` package directly.

``` r
hrm::hrmAttach()
```

A vector of the current `hrm` packages can be found by:

``` r
hrmPackages()
#>  [1] "chunky"           "projecttemplates" "metaboData"       "grover"          
#>  [5] "binneR"           "metabolyseR"      "profilePro"       "mzAnnotation"    
#>  [9] "assignments"      "construction"     "riches"           "metaboMisc"      
#> [13] "metaboWorkflows"
```

`hrm` associated packages can be updated using:

``` r
hrmUpdate()
```
