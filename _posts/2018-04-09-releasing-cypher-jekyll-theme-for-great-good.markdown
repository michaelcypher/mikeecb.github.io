---
title: "Releasing cypher-jekyll-theme for great good!"
date: 2018-04-09 21:00:00 +0100
time_to_read: 1
---

Yesterday, I was pleasantly surprised to find out that Nick Russo decided to use this website's "theme" (really just the styling) for his own [personal website](https://nijaru.com)! This finally convinced me to get around to properly creating and pushing it as a [Jekyll theme](https://jekyllrb.com/docs/themes/), which I've named `cypher-jekyll-theme`. I've published it to [RubyGems](https://rubygems.org/gems/cypher-jekyll-theme/versions/0.1.9) and open-sourced it on [GitHub](https://github.com/mikeecb/cypher-jekyll-theme)!

<div class="center-media img-container" alt="Curse the day W3C decided to ban infinitely recursive iframes!">
    {% include svg/theme_screenshot.jpg.svg %}
    <img src="/assets/imgs/theme_screenshot.jpg" class="overlay-img">
</div>
<p class="image-label">Curse the day W3C decided to ban infinitely recursive iframes!</p>

Unfortunately, I made a mess of publishing my gem, which is why the first usable version is v0.1.9. I had some real issues with using the [`jekyll-feed`](https://github.com/jekyll/jekyll-feed) plugin in the theme and solving this required:
1. installing and using [Travis CI](https://travis-ci.org/) (which didn't help as my build succeeded)
2. emailing GiHub support for better build error logs

Thankfully, I fixed it by adding the plugin dependency in the `_config.yml` file within my site repo (not theme repo). I've yank'd the previous versions, so they're not available for download, but I wasn't able to republish the gem with the same version. I'm not too bothered about releasing `cypher-jekyll-theme` as v0.1.9 but if you happen to know how to republish gems with the same version, hit me up! I would very much like to avoid this in the future.


### Installation ###

To install this theme:

1. add `gem "cypher-jekyll-theme"` to your Gemfile
2. add `theme: cypher-jekyll-theme` or `remote_theme: mikeecb/cypher-jekyll-theme`, if you're using Github Pages, to your `_config.yml` file
3. execute `bundle` or intall the gem yourself by running `gem install cypher-jekyll-theme`

### Usage ###

To use the theme,

1. create a `index.md` or `index.html` file that uses the `_layout/home.html` layout
2. override the `_include/about_preview.html` and `_include/contact.html` files to populate the "About" and "Contact" sections on your homepage
3. (Optionally) create a `404.md` or `404.html` file that uses the `_layout/not_found.html` layout
4. (**Important**) add the `jekyll-feed` plugin explicitly in your `_config.yaml`

