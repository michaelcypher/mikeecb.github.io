---
title:  "Migrating to Jekyll"
date:   2017-04-14 12:00:00 +0100
time_to_read: 1
redirect_from: 2017/04/14/migrating-to-jekyll.html
---

Yesterday, I decided to spend some time migrating this blog to [Jekyll][1]. I don't plan on leaving [Github Pages][2] anytime soon (I'm addicted to the free hosting) and as Jekyll is so tightly integrated, I thought I'd give it a shot. The 2 hours or so I spent migrating was well worth it.

### Fun Things I've Done ###

- Reformatted the website, transforming basic HTML into templates and markdown.
- [Replaced][3] the standard template (ew) with my (beautifully) styled webpage.
- Added an [Atom feed][4] (think better RSS) so people can subscribe to my blog. This was extremely simple using the [jekyll-feed][5] plugin. I attempted to get the feed working with Apple News but it's not going to happen (sorry).

### Fun Things I'll Do ###

- Go mad with [plugins][6]! I want to find an asset bundler to compress the site assets, making the website smaller and faster!
- [Emoji-fy the website][7] (another plugin).
- Add [Disqus][8] support so people can leave respectful comments. This [tutorial][9] seems helpful.

[1]: https://jekyllrb.com/
[2]: https://pages.github.com/
[3]: https://jekyllrb.com/docs/themes/#overriding-theme-defaults
[4]: https://en.wikipedia.org/wiki/Atom_(standard)
[5]: https://github.com/jekyll/jekyll-feed
[6]: http://www.jekyll-plugins.com/
[7]: http://www.jekyll-plugins.com/plugins/jekyll-emoji
[8]: https://disqus.com/features/
[9]: http://www.perfectlyrandom.org/2014/06/29/adding-disqus-to-your-jekyll-powered-github-pages/
