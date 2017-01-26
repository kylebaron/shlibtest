
Sys.setenv("R_TESTS" = "")
library(testthat)
library(shlibtest)


x1 <- testshlib("a")
x2 <- testshlib("b")
x3 <- testshlib("c")
x4 <- testshlib("d")
x5 <- testshlib("e")
x6 <- testshlib("f")

test_that("main", {
  expect_null(attr(x1,"status"))
  expect_null(attr(x2,"status"))
  expect_null(attr(x3,"status"))
  expect_null(attr(x4,"status"))
  expect_null(attr(x5,"status"))
  expect_null(attr(x6,"status"))
})

