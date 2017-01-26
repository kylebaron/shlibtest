

##' Test system return and status.
##'
##' @param dontuse not used
##'
##' @examples
##' x <- 1+2
##' testshlib()
##' 
##' @importFrom utils capture.output
##'
##' @export
testshlib <- function(dontuse=NULL) {
  
  cmd <- "ls -l"
  
  status1 <- system(cmd,intern=TRUE,ignore.stdout=TRUE)

  if(!is.null(attr(status1,"status"))) {
    
    status2 <- system(cmd,intern=TRUE,ignore.stdout=FALSE)
    status3 <- system(cmd,intern=FALSE,ignore.stdout=TRUE)
    
    msg <- paste("intern/ignore   ", attr(status1 ,"status"), " ", 
                 "intern/noignore ", capture.output(attr(status2 ,"status")), " ",
                 "nointern/ignore ",   status3) 
    
    stop(msg)
    
  }
  
  return(status1)
  
}

##' Another example.
##' 
##' @param x character
##' 
##' @examples
##' testshlib()
##' 
##' @export
foo <- function(x) {
  return(invisible(NULL))
}