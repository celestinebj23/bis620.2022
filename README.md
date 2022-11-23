
<!-- README.md is generated from README.Rmd. Please edit that file -->

# bis620.2022

<!-- badges: start -->

[![Codecov](https://codecov.io/gh/celestinebj23/bis620.2022/branch/main/graph/badge.svg)](https://codecov.io/gh/celestinebj23/bis620.2022)
[![R-CMD-check](https://github.com/celestinebj23/bis620.2022/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/celestinebj23/bis620.2022/actions/workflows/R-CMD-check.yaml)
[![Lint](https://github.com/celestinebj23/bis620.2022/actions/workflows/lint.yaml/badge.svg)](https://github.com/celestinebj23/bis620.2022/actions/workflows/lint.yaml)
[![Test
coverage](https://github.com/celestinebj23/bis620.2022/actions/workflows/test-coverage.yaml/badge.svg)](https://github.com/celestinebj23/bis620.2022/actions/workflows/test-coverage.yaml)
<!-- badges: end -->

The goal of bis620.2022 is to …

### Badge overview

[Coverage
page](https://github.com/celestinebj23/bis620.2022/actions/workflows/test-coverage.yaml)

[Lint
results](https://github.com/celestinebj23/bis620.2022/actions/workflows/lint.yaml)

## Installation

You can install the development version of bis620.2022 from
[GitHub](https://github.com/celestinebj23/bis620.2022) with:

``` r
# install.packages("devtools")
devtools::install_github("celestinebj23/bis620.2022")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(bis620.2022)

# Call of UKBiobank accelerometry data
data(ukb_accel)

#Use Data

ukb_accel[1:100, ] |>
  spectral_signature(take_log = TRUE) |>
  accel_plot()
```

<img src="man/figures/README-example-1.png" width="100%" />
