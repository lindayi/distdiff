#library(sm)
#library(magicaxis)
#library(beanplot)

comp.dist.plot <- function(dist1, dist2, legend1 = "Distribution 1", legend2 = "Distribution 2", legendpos = "topright", col1 = "#C8C8C8", col2 = "#646464", xlab = "", cut = TRUE, paired = FALSE, ...) {

  tmp_plot <- beanplot(dist2, dist1,
                       ll=0.05,
                       what=c(0,1,1,0),
                       col=list(c(col2),c(col1)),
                       beanlines = "median",
                       horizontal = TRUE,
                       side="both",
                       axes = FALSE,
                       ...)
  if (cut) {
    if (tmp_plot$log == "x") {
      cutmin = log(min(dist1, dist2))
      cutmax = log(max(dist1, dist2))
    } else {
      cutmin = min(dist1, dist2)
      cutmax = max(dist1, dist2)
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
  }

  magaxis(side=1,xlab = xlab)
  box()
  legend(legendpos, fill = c(col1, col2),
         legend = c(legend1, legend2), box.lty=0, bg="transparent")

  cat(paste("Summary of ", legend1, ":\n"), sep = "")
  print(summary(dist1))
  cat(paste("Summary of ", legend2, ":\n"), sep = "")
  print(summary(dist2))
  return(wilcox.test(dist1, dist2, paired = paired))
}
