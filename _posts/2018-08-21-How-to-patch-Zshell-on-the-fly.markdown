---
layout: post
title:  "How to patch Zshell on the fly"
date:   2018-08-21 20:00 +0200
type: post
categories: blog
tags: zinit C
---

Some 10 years ago, there was a topic in Linux kernel security – patching live kernel
by writing to `/dev/kmem` or by loading a custom Linux module (file with `.ko` extension).
Not sure how this topic looks today, but something similar is possible with a popular
system shell, the Zshell.
<!-- more -->

Zsh also has binary loadable modules. And, like Linux has a *table of system calls*,
Zshell has a *table of builtins*. Let me explain that `builtin` is a command that
is a part of the Zsh program, not a separate program from `/usr/local/bin` nor a shell
function.  The table holds `pointers` to `C`-functions that each implement some specific
builtin command.  There's for example a `C`-function `bin_zcompile`, which is called when an
user enters e.g.: `zcompile myscript.zsh`.

In Linux, a binary module after being loaded into the kernel can access the system-call
table and *switch pointers* to the `C`-functions that implement some specific system-calls.
The obvious analogy holds and yes – binary Zshell module can access builtin-table and
*switch-pointers* to `C`-functions implementing builtins. What does this mean? For example, a
module can swap `zcompile` and `echo` in places. Issuing `echo myscript.zsh` will compile
`myscript.zsh`, while issuing `zcompile Hello World` will output string `Hello World` to the
terminal. Below is an example of the `_setup` function of a module that achieves this:

{% highlight C %}
/* FUNCTION: setup_ */
/**/
int
setup_( UNUSED( Module m ) )
{
    void *tmp;
    Builtin bn1 = ( Builtin ) builtintab->getnode2( builtintab, "echo" );
    Builtin bn2 = ( Builtin ) builtintab->getnode2( builtintab, "zcompile" );
    tmp = bn1->handlerfunc;
    bn1->handlerfunc = bn2->handlerfunc;
    bn2->handlerfunc = tmp

    return 0;
}
{% endhighlight %}

I've decided to use this possibility for good deeds. [Zinit][zinit] will soon be shipping a
binary Zsh module which will extend and customize Zshell. Example of what is currently
implemented: the `source` builtin automatically **compiles** (i.e. invokes `zcompile`) the file
being loaded if it isn't already compiled or if the compilation is outdated. Managing
compilation-state of say 20 scripts (e.g. 20 plugins) can be a daunting task. With Zinit's
customized `source`, compilation will be guaranteed and automatic.

I'm looking for interesting ideas for some new Zshell builtins or for customizations of
existing builtins. If you have one, open an [issue][zplg-issue] for Zinit. Thanks!

[zinit]: https://github.com/zdharma/zinit
[zplg-issue]: https://github.com/zdharma/zinit/issues
