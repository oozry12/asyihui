---
title: 小蝌蚪找妈妈、钟形曲线与核密度估计
date: '2009-01-07'
slug: bell-shaped-curve-and-density-estimation
---

一眨眼又到12点了，ft。简写一下：Liu M.发来邮件，写了一个中心极限定理的代码，我一看，不对劲（此处省去200字）。不过另一个现象倒是让我颇为吃惊：常数的核密度估计依然是钟形曲线！刚开始我还觉得纳闷，后来转念一想，哦，也对。

不信客官您试试`plot(density(rep(0, 1000)))`看密度估计图形是啥样的。英文版参见这里：[When "Bell-shaped" is Far Far Away from Gaussian](/en/2009/01/when-bell-shaped-is-far-far-away-from-gaussian/)。

本例要说明的是小学里的道理，不能学小蝌蚪找妈妈，逮着钟形曲线就说正态。

对搞统计的人来说，务必谨慎对待那些经过处理的数据，若有可能，尽量画出原始数据，而不要仅仅给出综合信息。
