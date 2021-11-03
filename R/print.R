
print.oneway <- function(x, ...){
  if(!inherits(x, "oneway")) stop("Must be class 'oneway'")
  cat("\nSummary Statistics\n", 
      "====================================================\n", sep="")
  print(x$summarystats, ...)
  cat("\nAnova\n", 
      "====================================================\n", sep="")
  print(summary.lm(x$anova), ...)
}