---
layout: default
title: About
permalink: about/
render: dynamic
---

This is the web page of Zdharma Initiative that's about creating sophisticated Zsh software. 

You can find the source code for Zdharma projects at {% include icon-github.html username="zdharma" %}.

You can find the source code of this page, built with React and Jekyll, at
{% include icon-github.html username="InsidiousMind" %} /
[github](https://github.com/InsidiousMind/material-bliss-jekyll-theme)

Try of highlighting of the problematic part:

{% highlight zsh %}
demo_mod1_generator() {
    local mod="$1" ice="$2"

    # Content, no hyper-links
    reply=( "Hello World from ${ZUI[YELLOW]}ZUI${ZUI[COLOR_END]}! Module $mod, instance $ice." )

    # Non-selectable lines   Hops to jump with [ and ]   Local anchors
    reply2=( )               reply3=( 1 )                reply4=( )
}
{% endhighlight %}
