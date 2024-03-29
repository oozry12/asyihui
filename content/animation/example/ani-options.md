---
title: ani.options()
subtitle: Set or query animation options
date: '2017-04-04'
slug: ani-options
from_Rmd: yes
---

There are various parameters that control the behaviour of the animation,
such as time interval, maximum number of animation frames, height and width,
etc.

 

```r
library(animation)
## see the first example in help(animation) on how to set and restore animation
## options

## use the PDF device: remember to set 'ani.type' accordingly
ani.options(ani.dev = "pdf", ani.type = "pdf", ani.height = 5, ani.width = 7)

## use the Cairo PDF device if (require('Cairo')) { ani.options(ani.dev =
## CairoPDF, ani.type = 'pdf', ani.height = 6, ani.width = 6) }

## don't loop for GIF/HTML animations
ani.options(loop = FALSE)

## don't try to open the output automatically
ani.options(autobrowse = FALSE)

## it's a good habit to restore the options in the end so that other code will
## not be affected


## how to make use of the hidden option 'img.fmt'
saveHTML(expr = {
  png(ani.options("img.fmt"))
  for (i in 1:5) plot(runif(10))
  dev.off()
}, img.name = "custom_plot", use.dev = FALSE, ani.type = "png", description = "Note how we use our own graphics device in 'expr'.",
  htmlfile = "custom_device.html")
```
