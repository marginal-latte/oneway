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
