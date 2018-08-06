#library(sm)
#library(magicaxis)
#library(beanplot)

plot.comp.dist <- function(dist1, dist2, legend1 = "Distribution 1", legend2 = "Distribution 2", legendpos = "topright", col1 = "#C8C8C8", col2 = "#646464", xlab = "", cut = TRUE, paired = FALSE, ...) {
  if (cut) {
    cutmin = min(dist1, dist2)
    cutmax = max(dist1, dist2)
  } else {
    cutmin = -Inf
    cutmax = Inf
  }
  beanplot(dist2, dist1,
           ll=0.05,
           what=c(0,1,1,0),
           col=list(c(col2),c(col1)),
           beanlines = "median",
           cutmin = cutmin,
           cutmax = cutmax,
           horizontal = TRUE,
           side="both",
           axes = FALSE,
           ...)
  magaxis(side=1,xlab = xlab)
  box()
  legend(legendpos, fill = c(col1, col2),
         legend = c(legend1, legend2), box.lty=0, bg="transparent")
  return(wilcox.test(dist1, dist2, paired = paired))
}
