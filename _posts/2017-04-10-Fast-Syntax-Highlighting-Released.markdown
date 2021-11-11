---
layout: post
title:  "Fast-Syntax-Highlighting Released"
date:   2017-04-10 15:25 +0100
type: post
categories: syntax-highlighting
tags: projects syntax-highlighting colorizing
---

I have released a plugin that is a highly optimized version of Zsh-Syntax-Highlighting project. Overall
`60` optimizing commits have been shipped, and the result is that `zed`/`vared` can edit functions
that have `10 kB` of text in their body.<!-- more --> Also, multiple syntax-recognition upgrades are being
shipped:

1. Variable highlighting
1. Colorizing of `${(a)parameter[...]}` inside strings (normally only `$parameter` is colorized)
1. Fixed colorizing of function definition, like `abc() { ... }` – `abc` will not be red
1. Fixed colorizing of complex conditions inside `[[`, like `[[ "$a" || "$b" ]]`
1. Closing `]]` and `]` are highlighted
1. Paths from `$CDPATH` aren't colorized unless the command is `cd`

Check out full story at [Github project page](https://github.com/zdharma-continuum/fast-syntax-highlighting)
