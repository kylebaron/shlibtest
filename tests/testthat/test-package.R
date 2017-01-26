
Sys.setenv("R_TESTS" = "")
library(testthat)
library(systest)


x1 <- systest()
x2 <- systest()
x3 <- systest()
x4 <- systest()
x5 <- systest()


test_that("main", {
  expect_null(attr(x1,"status"))
  expect_null(attr(x2,"status"))
  expect_null(attr(x3,"status"))
  expect_null(attr(x4,"status"))
  expect_null(attr(x5,"status"))
})

