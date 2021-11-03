#'@title Perform One-way ANOVA tests
#'
#'@description
#'The oneway function performs a one way analysis of variance given a
#'formula and a data set. 
#'
#'@param formula formula specifying dependent variable y and independent
#'variables x, written as "y ~ x"
#'@param data dataset which contains the variables specified in formula
#'
#'@return a list containing fit, the model object, 
#'and summarystats, a dataframe of summary stats.
#'
#'@details
#'The \code{oneway} function is essentially a wrapper for the \code{lm} 
#'function, but returns instead a list containing the \code{lm} object 
#'and a dataframe of summary stats. Additionally, plot, print, and summary
#'methods are provided under the class oneway
#'
#'@seealso
#'\link[stats]{lm}
#'
#'@export
#'
#'@examples
#'\dontrun{
#'# test for differences in mpg by number of cylinders (cyl) in mtcars
#'my_anova <- oneway(formula = mpg ~ as.factor(cyl), data = mtcars)
#'}
oneway <- function(formula, data) {
  
  # listwise deletion of missing values
  data_complete <- na.omit(data)
  
  # anova
  fit <- lm(formula, data_complete)
  
  stats <-  aggregate(formula,
                     data,
                     function(x) c(n = length(x), mean = mean(x), sd = sd(x)))
 
  
  result <- list(anova = fit, summarystats = stats)
  class(result) <- c("oneway", "list")
  return(result)
  
}
