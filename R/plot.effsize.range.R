#library(viridis)
#library(effsize)

plot.effsize.range <- function(dist1, dist2, transparency = 150, col = viridis(4)) {
  low = as.double(cliff.delta(dist1, dist2)[[2]][1])
  dot = as.double(cliff.delta(dist1, dist2)[[1]][1])
  high = as.double(cliff.delta(dist1, dist2)[[2]][2])
  print(cliff.delta(dist1, dist2))
  #note: always pass alpha on the 0-255 scale
  makeTransparent<-function(someColor, alpha=100)
  {
    newColor<-col2rgb(someColor)
    apply(newColor, 2, function(curcoldata){rgb(red=curcoldata[1], green=curcoldata[2],
                                                blue=curcoldata[3],alpha=alpha, maxColorValue=255)})
  }

  colorscheme = c(makeTransparent(col[1], transparency),
                  makeTransparent(col[2], transparency),
                  makeTransparent(col[3], transparency),
                  makeTransparent(col[4], transparency))

  boxplot(
    c(low, dot, dot, dot, high),
    range = 0,
    horizontal = TRUE,
    ylim = c(-1,1),
    axes = FALSE,
    staplewex = 1,
    medpch = 19,
    medlty = 0,
    boxlty = 0,
    at = 1
  )

  boxplot(
    c(-1, -0.474),
    staplecol = colorscheme[1], staplewex = 1, boxcol = colorscheme[1], col = colorscheme[1],
    range = 0, add = TRUE, horizontal = TRUE, axes = FALSE, at = 1, boxwex = 0.5, boxlty = 1, medlty = 0
  )
  boxplot(
    c(1, 0.474),
    staplecol = colorscheme[1], staplewex = 1, boxcol = colorscheme[1], col = colorscheme[1],
    range = 0, add = TRUE, horizontal = TRUE, axes = FALSE, at = 1, boxwex = 0.5, boxlty = 1, medlty = 0
  )
  boxplot(
    c(-0.474, -0.330),
    staplecol = colorscheme[2], staplewex = 1, boxcol = colorscheme[2], col = colorscheme[2],
    range = 0, add = TRUE, horizontal = TRUE, axes = FALSE, at = 1, boxwex = 0.5, boxlty = 1, medlty = 0
  )
  boxplot(
    c(0.474, 0.330),
    staplecol = colorscheme[2], staplewex = 1, boxcol = colorscheme[2], col = colorscheme[2],
    range = 0, add = TRUE, horizontal = TRUE, axes = FALSE, at = 1, boxwex = 0.5, boxlty = 1, medlty = 0
  )
  boxplot(
    c(-0.330, -0.147),
    staplecol = colorscheme[3], staplewex = 1, boxcol = colorscheme[3], col = colorscheme[3],
    range = 0, add = TRUE, horizontal = TRUE, axes = FALSE, at = 1, boxwex = 0.5, boxlty = 1, medlty = 0
  )
  boxplot(
    c(0.330, 0.147),
    staplecol = colorscheme[3], staplewex = 1, boxcol = colorscheme[3], col = colorscheme[3],
    range = 0, add = TRUE, horizontal = TRUE, axes = FALSE, at = 1, boxwex = 0.5, boxlty = 1, medlty = 0
  )
  boxplot(
    c(-0.147, 0.147),
    staplecol = colorscheme[4], staplewex = 1, boxcol = colorscheme[4], col = colorscheme[4],
    range = 0, add = TRUE, horizontal = TRUE, axes = FALSE, at = 1, boxwex = 0.5, boxlty = 1, medlty = 0
  )

  boxplot(
    c(low, dot, dot, dot, high),
    range = 0,
    horizontal = TRUE,
    ylim = c(-1,1),
    axes = FALSE,
    staplewex = 1,
    medpch = 19,
    medlty = 0,
    boxlty = 0,
    at = 1,
    add = TRUE
  )

  axis(
    side = 1,
    at = c(1, -1, 0, round(low,3), round(dot,3), round(high,3)),
    las = 2, line = -3, lwd = 0, lwd.ticks = 1
  )
  legend(
    "top", horiz = TRUE,
    legend = c("Negligible", "Small", "Medium", "Large"),
    box.lty=1, fill = c(colorscheme[4], colorscheme[3], colorscheme[2], colorscheme[1])
  )
  mtext("Effect size (Cliff's Delta)", side=1, line = 1)

  return(cliff.delta(dist1, dist2))
}

