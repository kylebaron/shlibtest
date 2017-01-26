Sys.setenv("R_TESTS" = "")
library(testthat)
library(shlibtest)
test_check("shlibtest")

