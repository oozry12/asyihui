---
title: moving.block()
subtitle: "Cycle through an R object and plot each subset of elements"
date: '2017-04-04'
slug: moving-block
from_Rmd: yes
---

For a long numeric vector or matrix (or data frame), we can plot only a
subset of its elements to take a closer look at its structure. With a moving
'block' from the beginning to the end of a vector or matrix or any R
objects to which we can apply `subset`, all elements inside the block
are plotted as a line or scatter plot or any customized plots.

For a vector, the elments from `i + 1` to `i + block` will be
plotted in the `i`-th step; similarly for a matrix or data frame, a (scatter)
plot will be created from the `i + 1`-th row to `i + block`-th row.

However, this function is not limited to scatter plots or lines -- we can
customize the function `FUN` as we wish.



```r
library(animation)
## (1) Brownian motion block length: 101 (i.e. 300-200+1)
ani.options(nmax = 200, 0.1)
# plot y = dat against x = i + 1:block customize xlab and ylab with 'i' and
# 'block' restrict ylim using the range of 'dat'
moving.block(dat = cumsum(rnorm(300)), FUN = function(..., dat = dat, i = i, block = block) {
  plot(..., x = i + 1:block, xlab = sprintf("block length = %d", block), ylim = range(dat),
    ylab = sprintf("x[%s:%s]", i + 1, i + block))
}, type = "o", pch = 20)
```

<video controls loop autoplay><source src="https://assets.yihui.org/figures/animation/example/moving-block/demo-a.mp4" /><p>plot of chunk demo-a</p></video>
 

```r
## (2) Word counts of Hu's speech (block = 10; length(HuSpeech) = 75) see any
## pattern in the President's speech?
ani.options(nmax = 66, 1)
moving.block(dat = HuSpeech, FUN = function(..., dat = dat, i = i, block = block) {
  plot(..., x = i + 1:block, xlab = "paragraph index", ylim = range(dat), ylab = sprintf("HuSpeech[%s:%s]",
    i + 1, i + block))
}, type = "o", pch = 20)
```

<video controls loop autoplay><source src="https://assets.yihui.org/figures/animation/example/moving-block/demo-b.mp4" /><p>plot of chunk demo-b</p></video>
 

```r
## (3) sunspot data: observe the 11-year cycles block = 11 years x 12
## months/year = 132 set interval greater than 0 if your computer really rocks!
ani.options(nmax = 2857, 0.1)
spt.att = tsp(sunspot.month)
# the time index (we need it to correctly draw the ticks of x-axis)
ts.idx = seq(spt.att[1], spt.att[2], 1/spt.att[3])
moving.block(dat = sunspot.month, block = 132, FUN = function(..., dat = dat, i = i,
  block = block) {
  plot(..., x = ts.idx[i + 1:block], xlab = sprintf("block length = %d", block),
    ylim = range(dat), ylab = sprintf("sunspot.month[%s:%s]", i + 1, i + block))
}, type = "o", pch = 20)
```

```
## Warning in moving.block(dat = sunspot.month, block = 132, FUN = function(..., :
## block length is too short; try to adjust 'block' or ani.options('nmax')
```

<video controls loop autoplay><source src="https://assets.yihui.org/figures/animation/example/moving-block/demo-c.mp4" /><p>plot of chunk demo-c</p></video>

 

```r
## (4) earth quake: order the data by 'depth' first see how the locations
## change as 'depth' increases
ani.options(nmax = 900, 0.1)
# compute the mean depth for each block of data
moving.block(quakes[order(quakes$depth), c("long", "lat")], FUN = function(..., dat = dat,
  i = i, block = block) {
  plot(..., xlab = sprintf("%s[%s:%s]", colnames(dat)[1], i + 1, i + block), ylab = sprintf("%s[%s:%s]",
    colnames(dat)[2], i + 1, i + block), xlim = range(dat[, 1]), ylim = range(dat[,
    2]), main = sprintf("Mean Depth = %.3f", mean(sort(quakes$depth)[i + 1:block])))
}, pch = 20, col = rgb(0, 0, 0, 0.5))
```

<video controls loop autoplay><source src="https://assets.yihui.org/figures/animation/example/moving-block/demo-d.mp4" /><p>plot of chunk demo-d</p></video>
