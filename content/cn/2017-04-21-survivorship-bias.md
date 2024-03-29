---
title: 幸存者偏差
date: '2017-04-21'
slug: survivorship-bias
---

关于衡量一个人聪不聪明，除了传统的学院标准（诸如考试之类的），我觉得很重要的一方面就是看伊有多少盲点，这个准则甚至比学院标准更重要。学院标准只是临时性的，毕业了也就没什么用了；而清除盲点则是一个人一生的事情。

心理学中有大量的例子来说明这些盲点，这也是为什么我[认为](/cn/2017/02/shame/)心理学是一门很最重要的学科的原因。比如大约是 2011 年左右我看了[一个试验视频](https://www.youtube.com/watch?v=vJG698U2Mvo)，当时我就震惊了。看过这个试验的人应该都知道我在说什么，没看过的我也就不剧透了。

<iframe width="100%" height="400" src="https://www.youtube.com/embed/vJG698U2Mvo?rel=0" frameborder="0" allowfullscreen></iframe>

这种认知偏差就是我们视觉[^1]里很容易出现的盲点。掌握了这个法门之后，我不敢说能增强一个人的判断力，但起码能养成凡事多考虑几方面可能性的习惯，不要给自己留下太多盲点。比如如何看待成功，[XKCD](https://xkcd.com/1827/) 又一次散发出机智的光芒：

[![Survivorship Bias](https://imgs.xkcd.com/comics/survivorship_bias.png)](https://xkcd.com/1827/)

这就是经典的幸存者偏差（[Survivorship bias](https://en.wikipedia.org/wiki/Survivorship_bias)）。我们只能看到那些成功人士如何成功，而没考虑（1）他们的运气因素，例如这里 XKCD 带有讽刺意味的买彩票成功人士；（2）那些没成功的人为什么没成功，因为没成功的人的声音你听不到。

统计学里面最经典的幸存者偏差案例当属二战期间 Wald 大人建议给飞机的哪些部位加固了：那些没中弹的部位才需要重点加固，而被子弹打得稀烂的部位都无妨。乍一听，这太扯了吧，都打烂了还不加固？殊不知打烂了的飞机还能活着飞回来，就说明那些烂部位不重要，而那些没能飞回来的飞机，可能是被打中了致命部位，已经在战场上一命呜呼了。

作为码畜界的一只牲口，我会特意留心那些微弱的声音，比如表面上举世都在赞扬管道操作符 `%>%` 和哥哥作图系统，而那些没发声的人究竟在想什么。在外面开会的时候，我就会乐意跟这些反潮流的人私下交谈。其实我一直坚信我中土大唐的[任坤](https://renkun.me)当年完全有实力取代现在的那个管道包，但只是时间上差了一点点，就像格鲁希元帅的那[一秒钟](https://zh.wikipedia.org/wiki/%E4%BA%BA%E7%B1%BB%E7%9A%84%E7%BE%A4%E6%98%9F%E9%97%AA%E8%80%80%E6%97%B6)，然后世界格局就变了。不过就编程而言，我一点也不觉得管道符对我有任何价值；对数据分析来说，也许它让代码在某些人眼中变得可读性更强，但我这种土鳖觉得它对我的价值十分有限，我肯定不会用它的。他们经常举的那些糟糕代码例子在我眼中也有很重要的优势，就是在交互式跑代码的时候可以随时查看那些临时变量，管道语法提倡的是不保存中间的临时变量，这对我来说很不方便，我没法做到一口气把管道写全。哥哥作图系统很强大，但我现在很少做统计图形相关的工作，所以对我价值也有限，而且我极其不喜欢一些狂热粉的极端态度，不管什么图什么事，无条件使用管道语法和哥哥图形。当然，这也可能是我自己的盲点：也许还是我了解太少。

今天写这个话题只是一个小小的引子。我脑子里有一个庞大的计划（比我前面提到的月之眼计划还大），已经琢磨了几个月，但还没付诸实施。这个计划要解决的问题之一就是学术界的论文发表中的幸存者偏差。我希望不显著的结果也一样可以正大光明地发表，纠正这股刮了多年的统计歪风。这个计划需要的人柱力数量可能会是 COS 改版的人柱力数量的数十倍，所以很容易让我产生逃避和拖延心理。其实我更想做个安静的码农，但就是有些风车在那里我看着不对劲，总想去战它一战。

[^1]: 我说的是抽象意义上的视觉，不只是眼睛的视觉，而是广泛意义上的感知和思维。
