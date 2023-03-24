---
title: "bug(i3): display issues"
date: 2023-03-24T14:59:14+01:00
draft: false
---


## Context

I've had a weird issues in my laptop (carbon x1) which suddenly started to
hanging processes and the laptop's monitor got laggy (e.g not showing in real
time what I typed). I'm using i3 in a Pop!_OS.


## Solution

I've ended up in system76 article where they mention issues with external
monitor and I've found the following command which solved my problems:

```bash
$ gsettings set com.system76.hidpi enable false
```


> source: [https://support.system76.com/articles/hidpi-multi-monitor/](https://support.system76.com/articles/hidpi-multi-monitor/)

