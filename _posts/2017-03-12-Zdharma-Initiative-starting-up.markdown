---
layout: post
title:  "Zdharma Initiative starting up"
date:   2017-03-12 11:29 +0100
type: post
categories: overview
tags: zdharma
---
I've created zdharma.org and multiple Zsh projects because the Zsh language is enough powerfull
to support sophisticated and large tasks. Main project is currently **ZUI** – Zsh User Interface
library, that allows to create applications with curses interface in a manner resembling CGI+(D)HTML. <!-- more -->
It recalls the old term "RAD" – rapid application development. Here is what is sufficient to create
hello world application:

{% highlight zsh %}
demo_mod1_generator() {
    local mod="$1" ice="$2"

    # Content, no hyper-links
    reply=( "Hello World from ${ZUI[YELLOW]}ZUI${ZUI[COLOR_END]}! Module $mod, instance $ice." )

    # Non-selectable lines   Hops to jump with [ and ]   Local anchors
    reply2=( )               reply3=( 1 )                reply4=( )
}
{% endhighlight %}

Check out full [Hello World][hello-world] example code.

Other featured project is **Zconvey**. It allows to send commands between Zsh sessions. Its main use
case is to switch your workflow to new project with:

{% highlight zsh %}
cd ~/github/project2
zc-all cd $PWD
{% endhighlight %}

Check out Zconvey's [home page][zconvey] and Asciinema video there.

[hello-world]: https://github.com/zdharma/zui/blob/master/demos/zui-demo-hello-world
[zconvey]: https://github.com/zdharma/zconvey
