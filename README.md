# Distribution Comparison

Distribution Comparison (`DistCompare`) is a toolset for visualizing comparison between two distributions.

This toolset contains functions that plot:

1) two distributions side by side for comparison, with automatically logged axis when necessary, and returns Wilcoxon tests results (`comp.dist.plot`);

2) Cliff's Delta effect size and the confidence interval (`effsize.range.plot`).

For a complete list of functions, use `help(package = "distcompare")`

## Install

**Install DistCompare from Github**
```
install.packages("devtools")  # if you haven't installed devtools

library(devtools)

install_github("lindayi/distcomp")
```

## Sample

![An example of the visualization using this package](https://www.researchgate.net/profile/Dayi_Lin/publication/317570653/figure/fig7/AS:505247143809024@1497471714173/Distribution-of-the-update-frequency-measured-as-the-median-number-of-days-between.png)

## Next Step

- Support for Cohen's d and Hedges' g for effect size

- Support for customize thresholds for effect size

## References
Please consider citing the following paper when using this package and the visualization style of effect size:

Lin, D., Bezemer, C. P., & Hassan, A. E. (2018). [An empirical study of early access games on the Steam platform.](https://www.researchgate.net/publication/317570653_An_Empirical_Study_of_Early_Access_Games_on_the_Steam_Platform) Empirical Software Engineering, 23(2), 771-799.
