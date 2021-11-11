---
layout: post
title:  "Installing Gems And Node Modules With Zinit"
date:   2019-10-27 16:49 +0100
type: post
categories: zinit
tags: projects bgn
---

With use of the&nbsp;
[bin-gem-node](https://github.com/zinit/z-a-bin-gem-node) annex you can
install Ruby Gems and Node modules in an interesting way:

- they'll be installed in the plugin's or snippet's directory,
- an automatic function will be provided to run the binary that's provided by
  the package.
<!-- more -->

This has several benefits. For example, no `$PATH` alteration is required in the
`.zprofile` file. Also, the package will be automatically updated on `zinit
update`. Plus, the installation will be isolated from other packages – multiple
packages not be put in a single place.

An example Zinit invocation that installs the `remark` tool that can be used
to convert Markdown documents into man pages:

```zsh
zinit ice wait'2' lucid id-as'remark' node'remark <- !remark-cli; remark-man'
zinit snippet /dev/null
```

It is snippet-based. An example plugin-based invocation:

```zsh
zinit ice wait'2' lucid id-as'remark' node'remark <- !remark-cli; remark-man'
zinit load zdharma-continuum/null
```

It has an advantage – it will delete the `remark` function when unloading the
plugin.


The exclamation-mark before `!remark-cli` is important – it causes the automatic
function invoking the binary to be created. More information can be found on the
[bin-gem-node annex page](https://github.com/zinit/z-a-bin-gem-node).

The command installs 2 node modules – `remark-cli` and `remark-man` (the backend
for the `remark` converter – `remark` can convert also to other formats). By
using the exclamation-mark and the `<-` pointer it also requests the function
that will run the `remark` binary to be created. The function has the following
body:

```zsh
remark () {
	local bindir="/root/.zinit/plugins/remark/node_modules/.bin"
        local -x NODE_PATH="/root/.zinit/plugins/remark2"/node_modules
        "$bindir"/"remark" "$@"
}
```

As it can be seen it ultimately provides the `remark` tool to the command line.

<!-- vim:set ft=markdown tw=80 fo+=an2 autoindent: -->
