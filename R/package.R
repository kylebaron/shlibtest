

##' Test system / R CMD SHLIB.
##'
##'
##' @param dllname character
##' @param loc where to build the dll
##'
##' @examples
##' testshlib()
##'
##' @export
testshlib <- function(dllname="xyz",loc=tempdir()) {
  
  cpp <- file.path(loc,paste0(dllname, ".cpp"))
  dll <- file.path(loc,paste0(dllname,.Platform$dynlib.ext))

  f.con <- file(cpp, open="w")
  cat("#include <R.h>\n",file=f.con)
  cat(c(
  "void foo() {",
  "double x = 2;",
  "double y = 3;",
  "x = x+y;",
  "}"),sep="\n",file=f.con)
  close(f.con)

  cmd <- paste0("R CMD SHLIB ", cpp)
  status <- system(cmd)
  dyn.load(dll)
  dyn.unload(dll)
}





