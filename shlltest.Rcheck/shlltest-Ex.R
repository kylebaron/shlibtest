pkgname <- "shlltest"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
library('shlltest')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
cleanEx()
nameEx("testshlib")
### * testshlib

flush(stderr()); flush(stdout())

### Name: testshlib
### Title: Test system / R CMD SHLIB.
### Aliases: testshlib

### ** Examples

x <- 1+2
try(testshlib("abc"))




### * <FOOTER>
###
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
