#'@title Summarizing oneway class ANOVA models
#'
#'@param x an object of type oneway
#'@param ... parameters passed to print
#'
#'@description
#' produces summary table of the anova model's results
#' 
#' @return 
#' 
#' @seealso
#' \link[base]{print}
#' 
#' @examples 
#' \dontrun{
#' aov1 <- oneway(mpg ~ cyl, mtcars)
#' print.oneway(aov1)
#' }
summary.oneway <- function(x, ...){
  if(!inherits(x, "oneway")) stop("x must  be class 'oneway'")
  print(anova(x$anova), ...)
}
