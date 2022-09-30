title: Monitor issues in my pop_os with i3
date: 2022-09-30
slug: Solved graphics issues

---

## Context

I've had a weird issues with my laptop (x1, carbon) which suddenly started to
hanging process and the laptop's monitor got laggy (not showing in realtime
what I've typed). I'm using i3 in a Pop!_OS.


## Solution

I've ended up in system76 article where they mention issues with external
monitor and I've found the following command which solved my problems:

```bash
$ gsettings set com.system76.hidpi enable false
```


source: https://support.system76.com/articles/hidpi-multi-monitor/

