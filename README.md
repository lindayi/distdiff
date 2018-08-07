# Distribution Comparison

Distribution Comparison (`DistCompare`) is a toolset for visualizing comparison between two distributions.

This toolset contains functions that plot:

1) two distributions side by side for comparison (`comp.dist.plot`), and

2) Cliff's Delta effect size and the confidence interval (`effsize.range.plot`).

For a complete list of functions, use `help(package = "distcompare")`

## Install

**Install DistCompare from CRAN (Recommended)**

Currently pending CRAN review


**Install DistCompare from Github**
```
install.packages("devtools")  # if you haven't install devtools

library(devtools)

install_github("lindayi/distcomp")
```

## Sample

![An example of the visualization using this package](https://www.researchgate.net/profile/Dayi_Lin/publication/317570653/figure/fig12/AS:505247923949568@1497471900201/Distribution-of-the-positive-review-rate-during-and-after-leaving-the-early-access-stage.png)

## References
Please consider citing the following paper when using this package and the visualization style of effect size:

Lin, D., Bezemer, C. P., & Hassan, A. E. (2018). [An empirical study of early access games on the Steam platform. Empirical Software Engineering](https://www.researchgate.net/publication/317570653_An_Empirical_Study_of_Early_Access_Games_on_the_Steam_Platform), 23(2), 771-799.
