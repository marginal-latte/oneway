#'@title Plot function for Oneway objects
#'
#'@description
#' Produces a boxplot which follows the formula specified in the oneway object
#' 
#' @param x Object of class "oneway"
#' @param ... parameters passed to boxplot function
#' 
#' @return a list
#' 
#' @seealso
#' \link[graphics]{boxplot}
#' 
#' @export
#' 
#' @examples
#' \dontrun{
#' aov1 <- oneway(mpg ~ cyl, mtcars)
#' plot(aov1)
#' }
plot.oneway <- function(x, col="skyblue", ...){
  if(!inherits(x, "oneway")) stop("Must be class 'oneway'")
  boxplot(x$anova$terms, x$anova$model, ...)
}
