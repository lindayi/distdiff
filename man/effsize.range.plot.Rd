\name{effsize.range.plot}
\alias{effsize.range.plot}
\title{Plotting Effect Size (Cliff's Delta) with Confidence Interval}
\description{
Plotting Effect Size (Cliff's Delta) with Confidence Interval, and calculate Cliff's Delta effect size.
}
\usage{
effsize.range.plot(dist1, dist2, threshold = c(0.147, 0.330, 0.474), transparency = 150, col = viridis(4))
}
\arguments{
  \item{dist1}{the first distribution for comparison}
  \item{dist2}{the second distribution for comparison}
  \item{threshold}{A list of 3 doubles that represents the threshold for negligible, small, medium, and large effect size.}
  \item{transparency}{an integer range between 0-255 that represents the transparency of the colors}
  \item{col}{a vector with four colors for the four effect size segments (negligible, small, medium, large). By default using the \code{\link[viridisLite]{viridis}} color palettes which is colorblind-friendly.}
}
\value{
  A list of class \code{effsize}. See \code{\link[effsize]{cliff.delta}} for details.
}
\examples{
temp.dist1 = rnorm(100,1,2)
temp.dist2 = rnorm(100,-1,2)
effsize.range.plot(temp.dist1, temp.dist2)
}
\author{
Maintainer: Dayi Lin \url{http://lindayi.me}
}
\references{
Norman Cliff (1996). Ordinal methods for behavioral data analysis. Routledge.

Romano, J., Kromrey, J. D., Coraggio, J., Skowronek, J., & Devine, L. (2006, October). Exploring methods for evaluating group differences on the NSSE and other surveys: Are the t-test and Cohen’sd indices the most appropriate choices. In annual meeting of the Southern Association for Institutional Research.

Please cite the following paper when using this function for visualizing Cliff's Delta effect size:

Lin, D., Bezemer, C. P., & Hassan, A. E. (2018). \href{https://www.researchgate.net/publication/317570653_An_Empirical_Study_of_Early_Access_Games_on_the_Steam_Platform}{An empirical study of early access games on the Steam platform}. Empirical Software Engineering, 23(2), 771-799.
}
