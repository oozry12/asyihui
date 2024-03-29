---
title: knn.ani()
subtitle: Demonstration of the k-Nearest Neighbour (kNN) classification
date: '2017-04-04'
slug: knn-ani
from_Rmd: yes
---

Demonstrate the process of k-Nearest Neighbour classification on the 2D
plane.

For each row of the test set, the `\(k\)` nearest (in Euclidean distance)
training set vectors are found, and the classification is decided by majority
vote, with ties broken at random. For a single test sample point, the basic
steps are:

- locate the test point 
- compute the distances between the test point and all points in the training set 
- find `\(k\)` shortest distances and the corresponding training set points  
- vote for the result (find the maximum in the table for the true classifications) 

As there are four steps in an iteration, the total number of animation frames
should be `4 * min(nrow(test), ani.options('nmax'))` at last.

 

```r
library(animation)
## a binary classification problem
ani.options(interval = 1, nmax = 10)
x = matrix(c(rnorm(80, mean = -1), rnorm(80, mean = 1)), ncol = 2, byrow = TRUE)
y = matrix(rnorm(20, mean = 0, sd = 1.2), ncol = 2)
knn.ani(train = x, test = y, cl = rep(c("first class", "second class"), each = 40),
  k = 30)
```

<video controls loop autoplay><source src="https://assets.yihui.org/figures/animation/example/knn-ani/demo-a.mp4" /><p>plot of chunk demo-a</p></video>
 

```r
x = matrix(c(rnorm(30, mean = -2), rnorm(30, mean = 2), rnorm(30, mean = 0)), ncol = 2,
  byrow = TRUE)
y = matrix(rnorm(20, sd = 2), ncol = 2)
knn.ani(train = x, test = y, cl = rep(c("first", "second", "third"), each = 15),
  k = 25, cl.pch = c(2, 3, 19), dist.lty = 3)
```

<video controls loop autoplay><source src="https://assets.yihui.org/figures/animation/example/knn-ani/demo-b.mp4" /><p>plot of chunk demo-b</p></video>


```r
## an interactive demo: choose the test set by mouse-clicking
if (interactive()) {
  ani.options(nmax = 5)
  knn.ani(interact = TRUE)
}
```
