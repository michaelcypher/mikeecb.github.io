---
title:  "Bye Google API & Disqus"
date:   2017-04-19 12:00:00 +0100
time_to_read: 1
redirect_from: 2017/04/19/bye-googleapi-disqus.html
---

Today, I received a [comment](https://www.reddit.com/r/privacy/comments/668n7z/basic_security_privacy_checklist/dggjntd/) regarding my <a href="{{ "/security-privacy-checklist.html" | relative_url }}">Security & Privacy Checklist</a> page. [netskaven](https://www.reddit.com/user/netskaven) correctly pointed out that the checklist discusses privacy and installing anti-tracking extensions, but this website uses [Google API](https://en.wikipedia.org/wiki/Google_APIs), [Google Analytics](https://www.google.com/analytics/#?modal_active=none) (GA) and [Disqus](https://disqus.com/admin/). A little bit hypocritical...

### Google Analtics ###

As of now, the website only uses Google Analytics! I considered changing to [Piwik](https://piwik.org/) for analytics but would only receive 30 days of free hosting. One day, I'll look into using both Google Analytics and Piwik side-by-side and compare their functionality. If I determine that I can get by using Piwik, I'll transition over. Until then, Google Analytics remains.

### Google API ###

Previously, I was using Google API to serve [jQuery](https://jquery.com/) and this beautiful font. As there's not much JavaScript on this website (~30 un-minified lines of code), I decided to completely remove jQuery. The alternative, hosting the library, didn't make much sense considering its size. I also absolutely adore this font and have decided to host it myself following this [simple tutorial](http://www.thephphero.com/how-to-host-google-fonts-locally/).

### Removing Disqus ###

I've had Disqus support for less than a week but have also decided to scrap it. Disqus has the ability to track users on this site and as I'm not getting any comments (sad face), it's not worth it. I'll probably start sharing posts on [hacker news](https://news.ycombinator.com/) or [reddit](https://www.reddit.com/) and let those websites manage the discussion.

<hr/>

**Update** (April 29, 2018): Vincent Bernat wrote up a great post about running [a more privacy-friendly blog](https://vincent.bernat.im/en/blog/2018-more-privacy-blog) which involves self-hosting fonts, videos, comments and JavaScript, and removing Google Analytics. This post finally convinced me to remove Google Analytics from [cypher.codes](https://cypher.codes)!
