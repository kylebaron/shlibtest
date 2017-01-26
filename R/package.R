

##' Test system / R CMD SHLIB.
##'
##'
##' @param dllname character
##'
##' @examples
##' testshlib()
##'
##' @export
testshlib <- function(dllname="xyz") {
  file <- paste0(dllname, ".cpp")
  dll <- paste0(dllname,.Platform$dynlib.ext)

  f.con <- file(file, open="w")
  cat("#include <R.h>\n",file=f.con)
  cat(c(
  "void foo() {",
  "double x = 2;",
  "double y = 3;",
  "x = x+y;",
  "}"),sep="\n",file=f.con)
  close(f.con)

  cmd <- paste0("R CMD SHLIB ", file)
  status <- system(cmd)
  dyn.load(dll)
  dyn.unload(dll)
}





