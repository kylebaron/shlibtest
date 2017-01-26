

##' Test system return values.
##'
##'
##' @examples
##' systest()
##'
##' @export
systest <- function() {
  
  cmd <- "ls -l"
  
  status1 <- system(cmd,intern=TRUE,ignore.stdout=TRUE)

  if(!is.null(attr(status1,"status"))) {
    
    status2 <- system(cmd,intern=TRUE, ignore.stdout=FALSE)
    status3 <- system(cmd,intern=FALSE,ignore.stdout=FALSE)
    
    stop("intern/ignore   "  , attr(status1,"status"), " ", 
         "intern/noignore "  , attr(status2,"status"), " ",
         "nointern/ignore "  , status3) 
  }
  
  return(status1)
  
}





