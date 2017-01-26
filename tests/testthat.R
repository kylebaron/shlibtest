Sys.setenv("R_TESTS" = "")
library(testthat)
library(systest)
test_check("systest")

