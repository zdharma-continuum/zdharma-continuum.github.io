---
layout: post
title:  "ZUI release is near"
date:   2017-03-17 20:52 +0100
type: post
categories: zui
tags: projects zui
---

I've implemented almost every needed feature. There were refactoring stage, final-touches stage,
even an optimization stage. I will keep on working for at least 2 weeks, to allow an afterthought
stage to happen ;)<!-- more -->. Who knows what else will get possible. Currently implemented:

- buttons,
- anchors,
- list-boxes,
- text-fields,
- toggle buttons,
- timeout callback,
- state serialization,
- (D)HTML-like architecture.

Check out [demo](https://asciinema.org/a/107691) on text-fields and list-boxes. The timeout callback
is basically a timer that calls your function every N milliseconds – a
[configure/make wrapper](https://asciinema.org/a/107688) has been written that way. There are
endless possibilities with [ZUI](https://github.com/zdharma/zui/wiki).
