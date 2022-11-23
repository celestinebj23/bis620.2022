
<!-- README.md is generated from README.Rmd. Please edit that file -->

# bis620.2022

<!-- badges: start -->

[![R-CMD-check](https://github.com/celestinebj23/bis620.2022/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/celestinebj23/bis620.2022/actions/workflows/R-CMD-check.yaml)
[![Test
coverage](https://github.com/celestinebj23/bis620.2022/actions/workflows/test-coverage.yaml/badge.svg)](https://github.com/celestinebj23/bis620.2022/actions/workflows/test-coverage.yaml)
[![Lint](https://github.com/celestinebj23/bis620.2022/actions/workflows/lint.yaml/badge.svg)](https://github.com/celestinebj23/bis620.2022/actions/workflows/lint.yaml)
[![Codecov](https://codecov.io/gh/celestinebj23/bis620.2022/branch/main/graph/badge.svg)](https://codecov.io/gh/celestinebj23/bis620.2022)
<!-- badges: end -->

The goal of `bis620.2022` is to create a accelerometry graphic. The
graphic uses a dataset with time and three-dimensional coordinates. In
addition, it has a feature for creating spectral signature plots. The
plot function creates an accelerogram using a data frame with a
frequency column or time column and X, Y and Z variables. The spectrum
function performs a fast discrete Fourier analysis of the data frame.

The dataset `ukb_accel` is from UKBiobank and it is part of the package.

### Badge overview

[Test Coverage
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
