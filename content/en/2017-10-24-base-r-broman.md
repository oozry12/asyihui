---
title: I'm Also A Desiccated baseR-er Like Karl Broman
date: '2017-10-24'
slug: base-r-broman
---

The correct answer to any question is always "it depends", e.g., "Should I use tidyverse or base R?" I just saw Karl Broman described himself as [a somewhat desiccated baseR-er](https://twitter.com/kwbroman/status/922545181634768897). I have to admit that most of time I use base R, too. Why? I rarely do data analysis. My primary job is programming, and frankly, I consider my programming skills to be mediocre.[^1] I'm not good at learning new things. Unfortunately, I learned R the "wrong" way, and became a master of `par()` like Karl more than a decade ago when **ggplot2** was not born yet.

If I were to learn R again to _do data analysis_, I'd very much like to follow [David Robinson's suggestions](http://varianceexplained.org/r/teach-tidyverse/). For now, I'd say I'm completely comfortable with the old-fashioned `if`, `for`, `[[`, `$`, and `lapply()` for my programming needs, especially when developing R packages. Perhaps it is only me, but I find the pipe operator `%>%` obfuscatory when used for programming and also a hassle to debug. The first time I saw it being used in a package was [in **leaflet**](https://github.com/rstudio/leaflet/blob/d489e2c/R/colors.R#L279-L285) two years ago, and I stared at the chain for quite a while trying to parse it in my brain.[^2] For the pipe in *nix commands, I absolutely love it. For `%>%` in R, I guess I won't use it until someday when I mostly work on data analysis.

This post is not meant to defend base R. Life is short, and base R is big. There are certainly good and bad things about base R. My one and only complaint about base R is partial matching (especially for list elements). Other than that, I'm totally fine with it, even with all its known drawbacks. Again, I'm a programmer. Also remember the sample size is one (perhaps two, counting Karl), so please do not draw any conclusions from this short post. That said, if you are a beginner in R and I must offer a suggestion, I'd suggest tidyverse anyway (with a reservation on `%>%` unless your job is data analysis), because it is not worth the time learning all the inconsistencies in base R.

[^1]: I'm good at standing on the shoulders of giants and connecting different pieces of software packages, but I can rarely create a giant by myself. I'm bad at almost everything about computer science: I don't know C, C++, Python, Java, or whatever popular languages. I mainly program in R, and occasionally in JavaScript. I don't know much about classic algorithms (perhaps except bubble sort).

[^2]: This is not a representative example of pipes, though, since each function returns a function, and I had a hard time figuring out what `safePaletteFunc(pal)(x)` would do and the order in which these functions would be applied to `x`.
