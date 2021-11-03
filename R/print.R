#'@title Print function for oneway objects
#'
#'@param x object of class "oneway"
#'@param ... parameters passed to print function
#'
#'@seealso
#'\link[base]{print}
#'
#'@export
#'
#'@examples
#'\dontrun{
#'aov1 <- oneway(mpg ~ cyl, mtcars)
#'print.oneway(aov1)
#'}
print.oneway <- function(x, ...){
  if(!inherits(x, "oneway")) stop("Must be class 'oneway'")
  cat("\nSummary Statistics\n", 
      "====================================================\n", sep="")
  print(x$summarystats, ...)
  cat("\nAnova\n", 
      "====================================================\n", sep="")
  print(summary.lm(x$anova), ...)
}