---
title: "enh(tmux): How to improve tmux session switching"
date: 2021-12-08
draft: false
---

<!-- Title: How to improve tmux session switching -->
<!-- Date: 2021-12-08 -->
<!-- Modified: 2021-12-08 -->
<!-- Category: Hacking -->
<!-- Tags: hack, tmux, fzf -->
<!-- Slug: tmux-fzf-session -->
<!-- Authors: Maximiliano Greco -->


# Switching between tmux session efficiently

![](tmux-fzf-session.gif)

In a nutshell, I've created `~/.local/bin/tmux-fzf-session` and give it
execution permissions (`sudo chmod +x ~/.local/bin/tmux-fzf-session`), with the
following content:

```bash
#!/usr/bin/env bash
# inspired by:
# https://stackoverflow.com/questions/51780445/how-can-i-see-a-preview-of-a-tmux-session-window-from-outside-of-tmux
# https://github.com/sainnhe/tmux-fzf/blob/master/scripts/.preview
selected=$(tmux list-sessions -F "#{session_name}" 2>/dev/null | fzf --exit-0 --preview='tmux capture-pane -ep -t {}')
tmux switch-client -t "$selected"
```

Then, In my `tmux.conf`, I've added the following to create the tmux shortcut:

```bash
bind s display-popup -E -w 50% -h 50% "tmux-fzf-session"
```


## tmux-fzf-session explained

First of all we need to list all ours tmux sessions which can be done with this command:

`tmux list-sessions -F "#{session_name}" 2>/dev/null`


Second, We pipe the output to `fzf`:

`fzf --exit-0 --preview='tmux capture-pane -ep -t {}'`


Third, the session preview is getting by:

`tmux capture-pane -ep -t {}`


Done!

