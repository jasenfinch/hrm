
<!-- README.md is generated from README.Rmd. Please edit that file -->

# hrm

<!-- badges: start -->

[![Lifecycle:
stable](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://lifecycle.r-lib.org/articles/stages.html#stable)
[![R build
status](https://github.com/jasenfinch/hrm/workflows/R-CMD-check/badge.svg)](https://github.com/jasenfinch/hrm/actions)
[![Coverage
Status](https://img.shields.io/codecov/c/github/jasenfinch/hrm/master.svg)](https://codecov.io/github/jasenfinch/hrm?branch=master)
<!-- badges: end -->

Easily install, load and update an R package ecosystem for performing
analyses of high resolution metabolomics data.

`hrm` packages include:

-   [metaboData](https://aberHRML.github.io/metaboData) - Example data
    sets for metabolomics analyses
-   [binneR](https://aberHRML.github.io/binneR) - Spectral Processing
    for High Resolution Flow Infusion Mass Spectrometry
-   [metabolyseR](https://jasenfinch.github.io/metabolyseR) - A tool kit
    for pre-treatment, modelling, feature selection and correlation
    analyses of metabolomics data
-   [profilePro](https://jasenfinch.github.io/profilePro) - Unified
    Input and Output for Processing of Metabolomic Profiling Experiments
-   [mzAnnotation](https://jasenfinch.github.io/mzAnnotation) - Tools
    for putative annotation of accurate m/z from electrospray ionisation
    mass spectrometry data
-   [MFassign](https://github.com/jasenfinch/MFassign) - Molecular
    formula assignment for high resolution ESI metabolomics
-   [construction](https://github.com/jasenfinch/construction) -
    Consensus structural classifications for putative molecular formula
    assignments
-   [composition](https://github.com/jasenfinch/composition) -
    Compositional analyses for metabolomics data
-   [riches](https://jasenfinch.github.io/riches) - Structural and
    functional enrichment for metabolomics data
-   [metaboMisc](https://jasenfinch.github.io/metaboMisc) - A collection
    of miscellaneous helper and linker functions for metabolomics
    analyses
-   [metaboWorkflows](https://jasenfinch.github.io/metaboWorkflows) -
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
#> Warning in .recacheSubclasses(def@className, def, env): undefined subclass
#> "numericVector" of class "Mnumeric"; definition not updated
#> ── Attaching packages ───────────────────────────────────────────── hrm 0.9.0 ──
#> ✓ chunky           0.1.0   ✓ projecttemplates 0.5.1 
#> ✓ metaboData       0.6.2   ✓ binneR           2.6.0 
#> ✓ metabolyseR      0.14.3  ✓ profilePro       0.7.0 
#> ✓ mzAnnotation     1.7.5   ✓ MFassign         0.7.10
#> ✓ construction     0.2.10  ✓ composition      0.1.4 
#> ✓ riches           0.2.1   ✓ metaboMisc       0.5.7 
#> ✓ metaboWorkflows  0.9.0
#> ── Attaching packages ─────────────────────────────────────── tidyverse 1.3.1 ──
#> ✓ tibble  3.1.5     ✓ dplyr   1.0.7
#> ✓ tidyr   1.1.4     ✓ stringr 1.4.0
#> ✓ readr   2.0.2     ✓ forcats 0.5.1
#> ✓ purrr   0.3.4
#> ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
#> x dplyr::collect()    masks xcms::collect()
#> x dplyr::combine()    masks MSnbase::combine(), Biobase::combine(), BiocGenerics::combine()
#> x tidyr::expand()     masks S4Vectors::expand()
#> x dplyr::filter()     masks stats::filter()
#> x dplyr::first()      masks S4Vectors::first()
#> x dplyr::glimpse()    masks tibble::glimpse(), metaboWorkflows::glimpse()
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
#>  [1] "chunky"           "projecttemplates" "metaboData"       "binneR"          
#>  [5] "metabolyseR"      "profilePro"       "mzAnnotation"     "MFassign"        
#>  [9] "construction"     "composition"      "riches"           "metaboMisc"      
#> [13] "metaboWorkflows"
```

`hrm` associated packages can be updated using:

``` r
hrmUpdate()
```
