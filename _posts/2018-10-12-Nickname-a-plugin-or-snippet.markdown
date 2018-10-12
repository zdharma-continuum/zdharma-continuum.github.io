---
layout: post
title:  "Nickname a plugin or snippet"
date:   2018-10-12 14:36 +0100
type: post
categories: blog
tags: zplugin, id-as
---

Zplugin now supports `loading a plugin or snippet with a NICK-NAME`. Set the
nickname through the new `id-as''` ice-mod. For example, one could try to load
`docker/compose` from Github **binary releases**:<!-- more -->

```zsh
zplugin ice as"program" from"gh-r" mv"docker-compose* -> docker-compose"
zplugin light "docker/compose"
```

This registers plugin under **ID** `docker/compose`. Now the user could want to
load a **completion** from Github repository (not the binary release catalog)
also called `docker/compose`. The two IDs, bot being **docker/compose**, will
collide. The user can however resolve the conflict via `id-as''` ice-mod by
loading the completion under a **nick-name** `dc-completion`:

```zsh
zplugin ice as"completion" id-as"dc-completion"
zplugin load docker/compose
```

The completion is now seen under ID `dc-completion`. Issuing `zplugin report
dc-completion` works, so as other Zplugin commands:

```
 ▲ ~ zplugin report dc-completion
Plugin report for dc-completion
-------------------------------

Completions:
_docker-compose [enabled]
```

This can be also used to nickname snippets. For example, you can use this to
create handlers in place of long urls:

```zsh
zplugin ice as"program" id-as"git-unique"
zplugin snippet https://github.com/Osse/git-scripts/blob/master/git-unique
```

`zplugin delete git-unique` will work, `zplugin times` will show `git-unique`
instead of the URL, etc.

For comments you can use [twitter](https://twitter.com/ZdharmaI/status/1050743050748727297)
or send email directly to me using the following address: `sgniazdowski {<at>} gmail.com`.
