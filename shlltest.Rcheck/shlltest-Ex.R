pkgname <- "shlltest"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
library('shlltest')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
cleanEx()
nameEx("foo")
### * foo

flush(stderr()); flush(stdout())

### Name: foo
### Title: Another example.
### Aliases: foo

### ** Examples

testshlib()




cleanEx()
nameEx("testshlib")
### * testshlib

flush(stderr()); flush(stdout())

### Name: testshlib
### Title: Test system return and status.
### Aliases: testshlib

### ** Examples

x <- 1+2
testshlib()




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
