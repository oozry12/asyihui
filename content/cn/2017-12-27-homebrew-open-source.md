---
title: Homebrew 与开源
date: '2017-12-27'
slug: homebrew-open-source
---

[Homebrew](https://brew.sh) 应该是史上最成功的开源软件之一。注意开源的“开”字，颇有意味。传统意义上，开源仅仅只是指源代码是否公开可获得，我认为这只是历史上的狭义开源定义。我在 2013 年[已经谈过](/cn/2013/11/open-source-again/)广义的定义，就是开放的源代码加上开放的合作态度和姿势。有些开源项目被少数几个人把持着不肯松手，坚持自己的落后工作方式和习惯，比如几乎举世都抛弃 SVN 了还得抱着 SVN 不撒手，理由一堆一堆的（[看看这个跑题贴](https://stat.ethz.ch/pipermail/r-devel/2017-December/075268.html)）。我觉得这不算真正的开源。

Homebrew 最成功之处在于吸引了不计其数的贡献者。也许它的技术实现很蹩脚、不够专业，但它很好地解决了一大烦事，就是过去在苹果系统下装开发者软件真的是特么烦到爆炸。`./configure && make && make install` 实在不好玩，一个码农[一生玩一次](/cn/2009/12/cos-in-2010/)就够了，绝大多数情况下都是在白白浪费时间。

Homebrew 的作者 Max Howell 时隔两年后在 Quora 上[回答了一个关于他自己的问题](https://www.quora.com/Whats-the-logic-behind-Google-rejecting-Max-Howell-the-author-of-Homebrew-for-not-being-able-to-invert-a-binary-tree/answer/Max-Howell)，也就是如何看待大名鼎鼎的 Max Howell 当年在面试谷歌时因为不会做一道二叉树的题而被拒。这个事件当时在码农圈引起了巨大轰动，大家纷纷指责谷歌狗眼不识泰山。Howell 自己在这个回答中说了抱歉，因为他当时发的推特消息正好戳到了那些居心叵测要嘲讽挖苦正统计算机教育和大公司招聘文化的一大撮人的痒处，于是这个靠怒气驱动的社交媒体世界便爆炸了。

他自己承认从技术角度来说，Homebrew 是一坨狗屎（我疑心他心有忿忿，所以可能略有说气话的意思），但为广大苹果用户解决了一个非常实际的问题，这个解决方案并没有用到什么然并卵的二叉树或图论。这是他的回答里的一个亮点：

> Most tools don't give a shit about you.

我挺同意的。会写代码的人很多，写得好的也有很多，但真正关心用户疾苦的开发者我认为并不多。我不知道为什么码农圈会有这种奇特的文化：代码写得好似乎就不能和群众打成一片，仿佛会降低自己的档次。这是我的小人之心恶意揣测。善意的揣测是他们太聪明了，于是误认为世人都该拥有和他们一样的智商，和一颗永不停止折腾以及享受折腾的心，比如 `./configure` 的日志你得自己读得懂，要是缺什么依赖你自己知道怎么去找、去安装。他们忘了自己并不是生下来就是天才，忘了自己的白痴时代。

同样作为系统软件包管理工具，我认为 Linux 世界就不如 Homebrew 成功，诸如 apt-get、yum 之类的。它们藏得太深了，普通人很难为这些工具作贡献。 Homebrew 放在 Github 上，大家一起合作改进可以说是太方便了。相比之下，那些 Debian 包是怎么造出来的，鬼才能找到，就更不用说什么作贡献。就我个人过去跟几个 Debian 的人打交道的经历来看，Debian 的人对自己的系统简直有宗教般的虔诚信仰，恨不得啥包都打包成 Debian 包，而我尤其反对的两类软件打包是 TeX Live 和 R 的附加包（除非是有复杂的系统库依赖）：对这两套软件的打包带来的麻烦远大于便利，把简单的事情大大复杂化了。比如打包就意味着 sudo 安装，我觉得 sudo 对个人电脑用户来说几乎毫无意义：就我一个人用，犯得着问我密码写系统目录吗（Homebrew 往 `/usr/local/` 写文件，不要密码不扰民）。最让人不满的是，那些包永远是落后时代好几年，名曰追求稳定性[^1]。如果是系统核心包，我赞同保守升级；如果是具体领域的应用包，让用户等三五年有何意义。曾经我等 TeX Live 的 Ubuntu 更新等了好几年，后来实在忍不了，发现 TeX Live 直接从网络安装原来如此方便快捷，根本就不必仰人鼻息，而且还可以大大瘦身。我继续等了几年后终于找到足够的空闲时间（主要是公司支持我做这事），推出了轻量级的 [TinyTeX](/tinytex/)，逃出了 Linux 的依赖地狱。对那些预编好的大坨 `texlive-*` 包（打包者在乎你用不用这一坨扯不开的 LaTeX 包吗？不，他们似乎只是为了打包而打包），我终于可以说一句：

翻滚吧，牛宝宝！

![滚犊子](https://slides.yihui.org/gif/roll-away.gif)

其实看看另一个比 Homebrew 早得多的软件包管理工具 MacPorts 的命运就更能理解什么是开放的开源、什么是一个人在战斗的开源。这也从一个侧面告诉我们，不必因为天资不够而害怕挑战那些天才码农，如果你足够关心用户，以及擅长搭架子让用户像黄瓜爬藤一样爬上来为你开花结果，你也可以做出漂亮得多的开源软件。我相信这种机会一直都会存在。

[^1]: 我认为软件的稳定性应该依靠足够全面的测试（如单元测试），而不是靠拖时间、让勇敢的早期用户去手工测试。自动化的测试是软件最好的护城河。