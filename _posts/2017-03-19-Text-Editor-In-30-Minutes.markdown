---
layout: post
title:  "Text Editor In 30 Minutes"
date:   2017-03-19 15:36 +0100
type: post
categories: zui
tags: projects zui rad
---

ZUI's architecture has proven its value. I have only superficially tried to write a text editor in it, and it was
elevated in about 30 minutes. Multiple text-fields, one for each line of text from input file – and that's pretty it.
Saving file is a breeze with inline-handlers:

```zsh
-zui_std_rc_button "bsave" "Save" 'internal=1; print -rl -- "${lines[@]}" > $edited_file'
```

The code in apostrophes will be invoked on press of the button. Creating text fields for each line of text from input
file is also easy:

```zsh
noglob -zui_std_text_field "tfield${idx}" width offset lines[$idx]
```

The `noglob` causes `line[$idx]` to be treated as text and not as pattern. So, a hyper-link is created, with
backend-variable `line[<line-number>]` – which is single entry in array to which we read the whole file.

The text editor supports 1000 lines on current Zshells. I have submitted optimizations that make this 6000 lines – they
will be rolled out in next Zsh release (5.3.2). Main use case of such text-area is IMO editing of small config file in a
deploy tool, where you change only e.g. an IP, and press "Deploy" to run main task. That's why 1000 lines is enough, and
6000 even better.

Check out recorded [demo](https://asciinema.org/a/107800) of this text editor.
