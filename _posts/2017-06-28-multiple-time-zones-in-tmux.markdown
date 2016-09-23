---
title:  "Multiple Time Zones in tmux Status Bar"
date:   2017-06-29 12:30:00 +0100
time_to_read: 2
redirect_from: 2017/06/29/multiple-time-zones-in-tmux.html
---

I'm currently working remotely and part-time from London with the rest of my team in San Francisco. I don't enjoy converting between time zones and since I spend most my time within [tmux](https://github.com/tmux/tmux/wiki), I modified my status bar to include multiple time zones.

To do this, I use the unix `date` utility and set the `TZ` (time zone) environment variable before each `date` call. Unfortunately, when tmux executes these commands, the time zone environment variables are expanded and both times printed are within the same time zone.

#### Solution 1 ####

Create another script to be called by tmux. A bit hacky.

<div class="code-container">
<span class="code-file-name"><a href="https://github.com/mikeecb/dotfiles/blob/master/.tmux.conf">~/.tmux.conf</a></span>
{% highlight bash %}
# ...
set -g status-interval 1
set -g status-right "#(~/ldate.sh 'US/Pacific') #(~/ldate.sh 'Europe/London')"
set -g status-right-length 60
# ...
{% endhighlight %}
</div>

<div class="code-container">
<span class="code-file-name">~/ldate.sh</span>
{% highlight bash %}
#!/bin/bash
echo $(TZ=":$1" date "+%Z %H:%M:%S")
{% endhighlight %}
</div>

#### Solution 2 ####

[Escape the `%` characters appropriately](https://github.com/tmux/tmux/issues/988) within the `.tmux.conf` file. The status bar will update every `status-interval` (so make it update every second or so!). We need to escape the `%` with another `%` instead of a `\` as tmux passes the times through `strftime`.

<div class="code-container">
<span class="code-file-name"><a href="https://github.com/mikeecb/dotfiles/blob/master/.tmux.conf">~/.tmux.conf</a></span>
{% highlight bash %}
# ...
set -g status-interval 1
set -g status-right
  "#(echo $(TZ=':US/Pacific' date '+%%Z %%H:%%M:%%S'))"
  "#(echo $(TZ=':Europe/London' date '+%%Z %%H:%%M:%%S'))"
set -g status-right-length 60
# ...
{% endhighlight %}
</div>
