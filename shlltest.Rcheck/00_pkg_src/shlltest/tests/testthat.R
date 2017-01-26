Sys.setenv("R_TESTS" = "")
library(testthat)
library(shlltest)
test_check("shlltest",reporter="summary")
