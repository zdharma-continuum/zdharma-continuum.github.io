---
layout: post
title:  "New 40 working hours, next generation themes"
date:   2018-09-17 15:05 +0100
type: post
categories: blog
tags: zplugin
---

It was September, 3rd when I've decided to do an utmost, **radically time-invested** theme for the
plugin `zdharma/fast-syntax-highlighting`. I was finishing two `www.syntaxenvy.com`-based themes,
`sv-plant` and `sv-orple` and I noticed how unsupported by anything are my decisions about assigning
colors in given way. I then decided to **understand** objects in command line and colorize them
according to a full, **narration-based theory** even if it was to take me two weeks to get this
done. See the effects.<!-- more -->

I ended up working for about 10 days, 4 hours each day on average. It was a daunting task of many
tries to turn myself into some possible creative state, when staring at a few lines of Zsh code
doesn't yield perfect emptiness in mind, but instead some observation, some fact or theory. An
example of such theory that once came up: Zsh builtin command, like `echo`, should be of the same
color as any subcommand (i.e. `clone` in `git clone https://...`, etc.), because both `builtins` and
`subcommands` are not standalone objects, but are embedded in their main programs. So `echo` is
built into `zsh` program and `clone` is built into `git` program (git's implementation is very
modular, but logically `clone` **is** a part of `git`), and this makes those two command line
objects a single group, with single color.

## X-Paragon

I've wrote 130 lines text document with `17` premises or theories of how an object of the command
line should be colorized. The effect is the `X-Paragon` theme:

[![x-paragon theme](/assets/x-paragon.png)](/assets/x-paragon.png)

Besides the theory-backed-up allocation of colors described above (130 lines of explaining why
object X should be of color Y) and quality traits provided by
[www.syntaxenvy.com](https://www.syntaxenvy.com), it has features that never occurred in the free,
default themes, like:

 - distinct color for builtin, command and function/alias,
 - distinct color for long (double-hyphen) and short options,
 - 3 shades of blue, obtained thanks to `CIE L*a*b` conversion (see below).

The theme isn't available by default (but there's other one, see below). I've created this theme to
say thanks to people that support me at [www.Patreon.com](https://patreon.com/psprint). You can join
and download the theme (and the following `X-Fervent` & `X-Tranquil`) for `$1` a month. But hold on.
I provide a complete palette used by the theme here below, and the screenshot above, so you can
recreate the theme in a hour or so (color names are taken [from here](https://jonasjacek.github.io/colors/)):

`CIE L*a*b` (it keeps constant lightness [promised by](http://www.boronine.com/2012/10/06/My-Progress-On-HUSL/) [www.syntaxenvy.com](https://www.syntaxenvy.com)):<br/>
<div style='background-color: #afd7ff;' align="right"><div>LightSkyBlue1&nbsp;</div></div>
<div style="background-color: #87afd7;" align="right"><div>LightSkyBlue3&nbsp;</div></div>
<div style="background-color: #d7d787;" align="right"><div>LightGoldenrod2&nbsp;</div></div>
<div style="background-color: #5faf87;" align="right"><div>CadetBlue&nbsp;</div></div>
<div style="background-color: #87d787;" align="right"><div>PaleGreen3&nbsp;</div></div>
<div style="background-color: #87afaf;" align="right"><div>LightSkyBlue3&nbsp;</div></div>
<div style="background-color: #211f1c;" align="right"><div style='color: white;'>Grey11&nbsp;</div></div>
<div align="right"><div>&nbsp;</div></div>
Naive conversion (note the bumpy, breaking down brightness; still, those colors are in a way similar
to the RGB 24-bit colors given by [www.syntaxenvy.com](https://www.syntaxenvy.com), but they aren't
used to constitute the spine of the theme – the above ones are used):<br/>
<div style="background-color: #87afd7;" align="right"><div>LightSkyBlue3&nbsp;</div></div>
<div style="background-color: #5f87d7;" align="right"><div>SteelBlue3&nbsp;</div></div>
<div style="background-color: #afaf5f;" align="right"><div>DarkKhaki&nbsp;</div></div>
<div style="background-color: #87afaf;" align="right"><div>LightSkyBlue3&nbsp;</div></div>
<div style="background-color: #87d787;" align="right"><div>PaleGreen3&nbsp;</div></div>
<div style="background-color: #87afaf;" align="right"><div>LightSkyBlue3&nbsp;</div></div>
<div style="background-color: #000000;" align="right"><div style='color: white;'>Grey0&nbsp;</div></div>

<br/>[The www.syntaxenvy.com base for the theme.](https://www.syntaxenvy.com/0063633)

## CIE L\*a\*b

I have an interesting tool written in C and I plan to make it available to `$5` patrons if there
will be an interest.  The tool converts 24 bit RGB input color into xterm-256 color
[palette](https://jonasjacek.github.io/colors/) using `CIE L*a*b` color space. The point is that
`CIE L*a*b` tries to follow **human perception of how much two colors differ**. That is why it gave
so good results for the `X-Paragon` theme. When converting color themes from www.syntaxenvy.com such
tool is really needed.

## Q-JMnemonic

This is a free theme currently shipped with Fast-Syntax-Highlighting. It is a descentant of
`X-Paragon` theme, so it shares the points of the 130-line theory. Check out its [SyntaxEnvy
base theme](https://www.syntaxenvy.com/0753499). The name comes from me having instant recall of the
Johnny Mnemonic movie when I first time saw the theme after SyntaxEnvy drawed it :) I don't know
why it recalled, but there has to be something in the theme :)

[![q-jmnemonic theme](/assets/q-jmnemonic.png)](/assets/q-jmnemonic.png)

## X-Fervent

It's [Patreon](https://patreon.com/psprint)-only theme. It was created because its [SyntaxEnvy base
theme](https://www.syntaxenvy.com/0684041) showed interesting balance between dull and intense
colors. It's `X-Paragon` descendant, sharing its properties.

[![x-fervent theme](/assets/x-fervent.png)](/assets/x-fervent.png)

## X-Tranquil

It's [Patreon](https://patreon.com/psprint)-only theme. It was created because its [SyntaxEnvy base
theme](https://www.syntaxenvy.com/0854273) has interesting property: it is a dark theme, however
it is still easily readable, not dull, only half-way dark. It's `X-Paragon` descendant, sharing its
properties.

[![x-tranquil theme](/assets/x-tranquil.png)](/assets/x-tranquil.png)

## Setting themes

Invoke e.g. `fast-theme ./x-paragon.ini` after downloading the theme file. For `q-jmnemonic`, which
is shipped with the newest `fast-syntax-highlighting` version, the path can be skipped, i.e. invoke
just
`fast-theme q-jmnemonic`. Use option `-t` to display the same block of Zsh code as the screenshots
are using, to test the theme.

# Conclusions

The themes should have significant value in them, because:

 - they're based on the great [SyntaxEnvy](https://www.syntaxenvy.com) theme generator, which
   [promises](http://www.boronine.com/2012/10/06/My-Progress-On-HUSL/) constant lightness and
   saturation,
 - colors in them are obtained with [CIE L\*a\*b](https://en.wikipedia.org/wiki/CIELAB_color_space)
   color space, which promises to do a most faithful
   reduction from 24-bit color into 8-bit xterm-256 palette,
 - they're created during as much as 10 days of thinking on backing-up theory on color allocation.

I plan to take different routes in the backing-up theory and see what theme will result from this.
It will be available to `$5` [patrons](https://Patreon.com/psprint) within two months (before
Novermber, 10th). I will make a free spin-off of this theme too and include it in Github repository.

For comments you can use [twitter](https://twitter.com/ZdharmaI/status/1041733296827375616) and
[reddit](https://www.reddit.com/r/zsh/comments/9gm41c/10_days_of_work_radically_timeinvested_themes_for/)
or send email directly to me using the following address: `sgniazdowski {<at>} gmail.com`.
