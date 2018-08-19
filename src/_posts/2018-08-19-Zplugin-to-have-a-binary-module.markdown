---
layout: post
title:  "Zplugin to have a binary module"
date:   2018-08-19 16:45 +0100
type: post
categories: blog
tags: zplugin
---

As most of Zsh users know, there are binary Zsh modules, like for example `zsh/datetime`.
The modules extend Zshell, take the mentioned module as an example – it provides a global
variable `$EPOCHSECONDS` holding unix time-stamp. Not everybody know that those written in
C goodies can come from outside of Zsh installation. Such module is compiled standalone
using Zshell C headers and if everything goes right, can be loaded into Zsh just like that.

I've decided to equip Zplugin with own, custom Zsh binary module. As probably all Zsh modules
out there, it will be written in C. The development started on August 16, 2018, after receiving
a dedicated donation from an user.

Today I'm implementing customization of `source` (or dot, i.e. "`.`") builtin. It can be extended
to *measure the time the sourcing took*. User will be able to display a report with list of the
sources done in current Zsh session, with duration (in milliseconds) that each source had. Why
such feature? Pretty all Zsh plugin managers use `source` to load plugins. I only saw that
Antigen might be using `eval $(<plugin.zsh)` trick, but then verified and it seems not to use it
(earlier I saw some commit messages of Antigen, mentioning the trick). This means that with
Zplugin Zsh module it will be possible to *profile* plugin loading times yielded by any plugin
manager out there. That's why I plan to provide an installation script that will allow to use
Zplugin Zsh module standalone, without installing/using Zplugin itself.

Time-profiling of `source` is one of the features of the module. There are others, but I have
to get back to coding, so I describe them on another occasion.
