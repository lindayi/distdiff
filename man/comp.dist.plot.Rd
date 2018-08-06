\name{comp.dist.plot}
\alias{comp.dist.plot}
\title{Plotting Two Distributions Side by Side for Comparison}
\description{
Plotting both distributions in one beanplot, and calculate the significance of difference between two distributions using Wilcoxon Rank Sum or Signed Rank Test.
}
\usage{
comp.dist.plot(dist1, dist2,
               legend1 = "Distribution 1",
               legend2 = "Distribution 2",
               legendpos = "topright",
               col1 = "#C8C8C8", col2 = "#646464",
               xlab = "", cut = TRUE,
               paired = FALSE, ...)
}
\arguments{
  \item{dist1}{the first distribution for comparison}
  \item{dist2}{the second distribution for comparison}
  \item{legend1}{the label for the legend of the first distribution}
  \item{legend2}{the label for the legend of the second distribution}
  \item{legendpos}{the position of the legend, specified by a single keyword from the list "bottomright", "bottom", "bottomleft", "left", "topleft", "top", "topright", "right" and "center".}
  \item{col1}{the color for the first distribution}
  \item{col2}{the color for the second distribution}
  \item{xlab}{the label for the x-axis}
  \item{cut}{logical; if TRUE, the beanplot will be cut at the minimum / maximum value of the distribution to avoid extending the beanplot to illegal values}
  \item{paired}{logical; if TRUE, a Wilcoxon signed rank test of the null that \code{dist1} - \code{dist2} is symmetric about 0 (or \code{mu} if specified) is performed; if FALSE, a Wilcoxon rank sum test (equivalent to the Mann-Whitney test: see the Note) is carried out. In this case, the null hypothesis is that \code{dist1} and \code{dist2} differ by a location shift of 0 (or \code{mu} if specified) and the alternative is that they differ by some other location shift. See \code{\link[stats]{wilcox.test}} for details}
  \item{...}{further arguments to be passed to \code{\link[stats]{wilcox.test}}}
}
\value{
  A list of class \code{htest}. See \code{\link[stats]{wilcox.test}} for details.
}
\examples{
temp.dist1 = rnorm(100,1,2)
temp.dist2 = rnorm(100,-1,2)

# Basic (by default unpaired)
comp.dist.plot(temp.dist1, temp.dist2)

# Without cut
comp.dist.plot(temp.dist1, temp.dist2, cut = FALSE)

# Paired test
comp.dist.plot(temp.dist1, temp.dist2, paired = TRUE)
}
\author{
Maintainer: Dayi Lin \url{http://lindayi.me}
}
\references{
Please consider citing the following paper when using this package and the visualization style of effect size:

Lin, D., Bezemer, C. P., & Hassan, A. E. (2018). \href{https://www.researchgate.net/publication/317570653_An_Empirical_Study_of_Early_Access_Games_on_the_Steam_Platform}{An empirical study of early access games on the Steam platform}. Empirical Software Engineering, 23(2), 771-799.

}
