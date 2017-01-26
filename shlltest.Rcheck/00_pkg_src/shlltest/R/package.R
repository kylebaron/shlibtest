fun <- '
void foo() {
  double x = 2;
  double y = 3;
  x = x+y;
}
'

##' Test system / R CMD SHLIB.
##'
##'
##' @param dllname character
##' @param loc where to build the 
##'
##' @examples
##' x <- 1+2
##' try(testshlib("abc"))
##' 
##' @importFrom utils capture.output
##'
##' @export
testshlib <- function(dllname="xyz",loc=tempdir()) {
  
  # cpp <- paste0(dllname, ".cpp")
  # 
  # cwd <- getwd()
  # setwd(loc)
  # on.exit(setwd(cwd))
  # 
  # f.con <- file(cpp, open="w")
  # cat(c(
  #   "void foo() {",
  #   "double x = 2;",
  #   "double y = 3;",
  #   "x = x+y;",
  #   "}"),sep="\n",file=f.con)
  # close(f.con)
  # 
  # cmd <- paste0("R CMD SHLIB ", cpp)
  
  cmd <- "ls -l"
  
  status1 <- system(cmd,intern=TRUE,ignore.stdout=TRUE)

  if(!is.null(attr(status1,"status"))) {
    
    status2 <- system(cmd,intern=TRUE,ignore.stdout=FALSE)
    status3 <- system(cmd,intern=FALSE,ignore.stdout=TRUE)
    
    stop("intern/ignore   ", attr(status1 ,"status"), " ", 
         "intern/noignore ", capture.output(attr(status2 ,"status")), " ",
         "nointern/ignore ",      status3) 
  }
  
  return(status1)
  
}

