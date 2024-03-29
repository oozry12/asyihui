---
title: saveGIF()
subtitle: "Convert images to a single animation file (typically GIF) using ImageMagick or GraphicsMagick"
date: '2017-04-04'
slug: saveGIF
from_Rmd: yes
---

This function opens a graphical device (specified in
`ani.options('ani.dev')`) first to generate a sequence of images based
on `expr`, then makes use of the command `convert` in
'ImageMagick' to convert these images to a single animated movie (as a GIF or
MPG file). An alternative software package is GraphicsMagick (use
`convert = 'gm convert'`), which is smaller than ImageMagick.

This function calls `im.convert` (or `gm.convert`,
depending on the argument `convert`) to convert images to a single
animation.

The advantage of this function is that it can create a single movie file,
however, there are two problems too: (1) we need a special (free) software
ImageMagick or GraphicsMagick; (2) the speed of the animation will be beyond
our control, as the `interval` option is fixed. Other approaches in this
package may have greater flexibilities, e.g. the HTML approach (see
`saveHTML`).

See `ani.options` for the options that may affect the output,
e.g.  the graphics device (including the height/width specifications), the
file extension of image frames, and the time interval between image frames,
etc.  Note that `ani.options('interval')` can be a numeric vector!
 

```r
library(animation)
## make sure ImageMagick has been installed in your system
saveGIF({
  for (i in 1:10) plot(runif(10), ylim = 0:1)
})

## if the above conversion was successful, the option 'convert' should not be
## NULL under Windows
ani.options("convert")
## like 'C:/Software/LyX/etc/ImageMagick/convert.exe'

saveGIF({
  brownian.motion(pch = 21, cex = 5, col = "red", bg = "yellow")
}, movie.name = "brownian_motion.gif", interval = 0.1, nmax = 30, ani.width = 600)

## non-constant intervals between image frames
saveGIF({
  brownian.motion(pch = 21, cex = 5, col = "red", bg = "yellow")
}, movie.name = "brownian_motion2.gif", interval = runif(30, 0.01, 1), nmax = 30)
```
