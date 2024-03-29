---
title: quincunx()
subtitle: Demonstration of the Galton Box, example 1
date: '2017-04-04'
slug: quincunx
from_Rmd: yes
---
Demonstration of the Quincunx (Bean Machine/Galton Box)

Simulates the quincunx with 'balls' (beans) falling through several layers
(denoted by triangles) and the distribution of the final locations at which
the balls hit is denoted by a histogram.


`quincunx()` is used to model intergenerational variation: balls are dropped from the top and cascade randomly through rows of alternating offset pins, landing in compartments at the bottom as a binomial or approximately normal distribution[^1].

`quincunx2()` is afforded insight into regression to the mean. When the pellets in an upper compartment are released, their average final position is directly below. But what if we ask of a compartment at the lower level, from where did these pellets come? The answer was not 'on average, directly above'. Rather, it was 'on average, more towards the middle', for the simple reason that there were more pellets above it towards the middle that could wander left than there were in the left extreme that could wander to the right, inwards[^1].

The bean machine, also known as the quincunx or Galton box, is a device
invented by Sir Francis Galton to demonstrate the law of error and the normal
distribution.

When a ball falls through a layer, it can either go to the right or left side
with the probability 0.5. At last the location of all the balls will show us
the bell-shaped distribution.
 

```r
library(animation)
set.seed(123)
ani.options(nmax = 200 + 15 - 2, 2)
freq = quincunx(balls = 200, col.balls = rainbow(200))
```

```r
## frequency table
barplot(freq, space = 0)
```

<video controls loop autoplay><source src="https://assets.yihui.org/figures/animation/example/quincunx/demo-a.mp4" /><p>plot of chunk demo-a</p></video>



[^1]: Darwin, Galton and the Statistical Enlightenment, http://onlinelibrary.wiley.com/doi/10.1111/j.1467-985X.2010.00643.x/full 
