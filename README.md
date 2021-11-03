
# oneway

![](oneway.png)

The goal of oneway is to run one way analysis of variance tests on data sets!

## Installation

You can install the released version of oneway from github:

``` r
if(!require("remotes"")){
  install.packages("remotes")
  library(remotes)
}

remotes::install_github("marginal-latte/oneway")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(oneway)
aov1 <- oneway(mpg ~ cyl, mtcars)
print(aov1)
plot(aov1)
summary(aov1)
```

