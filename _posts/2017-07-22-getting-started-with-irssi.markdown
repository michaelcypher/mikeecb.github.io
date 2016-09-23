---
title: "Getting Started with Irssi"
time_to_read: 6
---

Do you use IRC because you're a l33t hacker but still use a daft UI? Then [Irssi](https://irssi.org/) is for you!

Irssi is a command-line chat application centered around IRC. The interface is incredibly basic but can be easily extended through Perl scripts (of which there are hundreds online). With Irssi, you can connect to multile IRC servers at once.

In this blog post, I'm going to teach you enough to use Irssi as your main IRC client and give you a basic setup which (I think) looks and acts great.


<div class="center-media" alt="My (zoomed-in) Irssi setup">
    <div class="img-container">
        {% include svg/irssi.jpg.svg %}
        <img src="/assets/imgs/irssi.jpg" class="overlay-img">
    </div>
</div>
<p class="image-label">My (zoomed-in) Irssi setup</p>

**Note**: Ignore the (blue) tmux status bar at the bottom of the terminal window!

### Basics

First, you're going to need to [install Irssi](https://irssi.org/download/). If you are often connected to multiple IRC servers, the following commands will be important.

- `irssi`: Launches Irssi (duh).
- `/connect irc.foo.com`: Connects to `irc.foo.com`.
- `/server irc.bar.com`: Disconnects from current server and connets to `irc.bar.com`.
- `/disconnect`: Disconnects from the current server.

#### Windows

Once you're connected to an IRC server, you can execute standard IRC commands (e.g. `/join #rust` to join the `#rust` channel) as normal. You'll notice that everytime you join a channel, a new window is created. Everything in Irssi is based around windows which can occupy the entire terminal screen or can be split (like tmux and vim). To close a window, run `/wc` (or `/window close` if you're so inclined).

The following key-bindings exist for switching between windows (meta is normally the `Alt` key but the `Esc` key also works):

- `Meta-1, Meta-2, .. Meta-0`: Jump directly between windows 1-10
- `Meta-q .. Meta-o`: Jump directly between windows 11-19
- `Ctrl-P, Ctrl-N`: Jump to previous / next window

#### Automating Stuff

You can get Irssi to automatically join servers, channels, send messages and more. Currently, I have Irssi set to automatically connect to the Freenode server, identify myself with a `NickServ` and join the `#python` and `#rust` channels. Although you can config this within Irssi, I prefer changing the config file located at `~/.irssi/config` (which has access to environment variables)!

<div class="code-container">
<span class="code-file-name"><a href="https://github.com/mikeecb/dotfiles/blob/master/.irssi/config">~/.irssi/conf</a></span>
{% highlight bash %}
servers = (
  {
    address = "chat.freenode.net";
    chatnet = "Freenode";
    port = "6697";
    use_tls = "yes";
    tls_verify = "yes";
    autoconnect = "yes";
  },
);

chatnets = {
  Freenode = {
    type = "IRC";
    autosendcmd = "/^msg nickserv identify $FREENODE_PASSWORD; wait 2000";
    max_kicks = "1";
    max_msgs = "4";
    max_whois = "1";
  };
};

channels = (
  { name = "#python"; chatnet = "Freenode"; autojoin = "Yes"; },
  { name = "#rust"; chatnet = "Freenode"; autojoin = "Yes"; }
);
{% endhighlight %}
</div>

#### Ignoring Noise

Personally, I hate messages that tell me when users join or leave channels or when users change their nicknames. I think it's noise that makes it harder to follow a conversation. You can ignore these messages by running `/ignore * JOINS PARTS QUITS NICKS` or adding `ignores = ({level = "JOINS PARTS QUITS NICKS";});` directly to your `~/.irssi/config` file.

#### Themes

While not neccessary, it's possible to spice up the look of Irssi by using [themes](https://irssi-import.github.io/themes/). I currently use the bork theme by fraki which formats the Irssi status bar nicely. To install a theme, download and move the `.theme` file to `~/.irssi/` directory, and run `/SET theme THEME_NAME` within Irssi.

### Scripts!

Irssi provides a nice scripting API and hosts a [collection of popular scripts](https://scripts.irssi.org/). I'm not hardcore enough to run scripts when I need them, so I just autorun them when I start Irssi. First, let's just create the directories where these scripts will live.

{% highlight bash %}
mkdir ~/.irssi/scripts
mkdir ~/.irssi/scripts/autorun
{% endhighlight %}

To download new scripts, we can either download them manually and then move them into `~/.irssi/scripts/autorun` or running `/run scriptassist` (once per session) and then `/script install SCRIPT_NAME` within Irssi. To load a script, run `/script load autorun/SCRIPT_NAME` and it will automatically be run everytime you start Irssi.

I recommend the following scripts:

- **[adv_windowlist.pl](https://github.com/irssi/scripts.irssi.org/blob/master/scripts/adv_windowlist.pl)**: A vertical pane that displays the IRC channels active in every window. You may need to install the `Text::CharWidth` Perl module in order to get this script to correctly work. Very important.
- **[hilightwin.pl](https://github.com/irssi/scripts.irssi.org/blob/master/scripts/hilightwin.pl)**: Prints hilighted and private messages to a window named "hilight". Manual setup is required to create the hilight window.
- **[nm2.pl](https://github.com/irssi/scripts/blob/master/scripts/nm2.pl)**: This plugin right-aligns nicknames (relative to the longest nickname) so that all messages start at the same terminal column. I find it much easier to read chat messages formatted in this way.
- **[tmux-nicklist-portable.pl](https://github.com/irssi/scripts/blob/master/scripts/tmux-nicklist-portable.pl)**: A vertical pane that displays user nicknames within an IRC channel. Not super important but coming from [Limechat](http://limechat.net/mac/), I'm used to this. This plugin is specificly written for tmux.

#### Hilight window

I like to have my hilight window always viewable and at the top of my window. To do this, I created a new split named "hilight" like so:

{% highlight bash %}
/window new split
/window name hilight
/window size 4

/layout save
/save
{% endhighlight %}

We need to configure keywords we want to highlight as well. To do this, execute `/hilight mikeecb` in Irssi, replacing `mikeecb` (my Freenode username) with your username. Alternatively, you can add `hilights = ({text = "mikeecb"; nick = "yes"; word = "yes";});` directly to your `~/.irssi/config` file.

#### Notifications

A [bunch](https://github.com/irssi/scripts/blob/master/scripts/desktop-notify.pl) [of](https://github.com/irssi/scripts/blob/master/scripts/fnotify.pl) [plugins](https://github.com/irssi/scripts/blob/master/scripts/mqtt-notify.pl) exist that notify you (via email for example) whenever you receive new IRC messages within Irssi. I've found that the audible bell triggered whenever you are hilighted is sufficient for me, but feel free to try alternatives.

And that's it! You've got a minimal command-line IRC client that is extremely extendible. If you find other useful scripts or functionality, I'd love know about it!

