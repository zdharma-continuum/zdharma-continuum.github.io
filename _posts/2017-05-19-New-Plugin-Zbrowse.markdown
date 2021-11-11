---
layout: post
title:  "New plugin: Zbrowse"
date:   2017-05-19 3:35 +0100
type: post
categories: plugin
tags: projects zui
---

I have released a plugin that shows current user-defined shell variables in Zsh using full-screen
textual UI.
<!-- more -->

When coding
a script, testing something in shell, etc. one often does repetitive `echo $var` to see result
of a loop, a function, etc. Now just pressing `Ctrl-B` suffices, a `ZUI` application will start
– the `zbrowse`, and nicely list all user-defined (not from e.g. `zshrc`) parameters (i.e.
variables). One can also show **all** shell parameters and search them incrementally.

The project is located at [Github](https://github.com/zdharma-continuum/zbrowse)
