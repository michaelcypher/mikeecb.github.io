---
title:  "Serving Github Pages over HTTPS using Cloudflare"
date:   2017-06-05 14:30:00 +0100
time_to_read: 2
redirect_from: 2017/06/05/custom-github-pages-domain-over-https.html
---

It's official, <a href="https://cypher.codes">cypher.codes</a> is now served over HTTPS!

Since Github pages doesn't support serving sites with custom domains over HTTPS, I naïvely didn't think it was possible. But some carefully crafted search queries surfaced a <a href="https://cloudflare.com">Cloudflare</a> <a href="https://blog.cloudflare.com/secure-and-fast-github-pages-with-cloudflare/">tutorial</a> to do just that.

This website is now encrypted between the user (you) and Cloudflare, and between Cloudflare and Github. I trust both these companies so I'm pretty pleased with this setup.

The whole migration (if you can call it that), including setting up a free Cloudflare account, changing domain nameservers and setting up the correct page rules, took less than an hour. And that included a phaff where I changed nameservers for <a href="https://cypher.codes">cypher.cool</a> mistake. I highly recommend every Github Pages user follows the steps in the link above.

Interestingly, I think(?) the certificate Cloudflare provides to <a href="https://cypher.codes">cypher.codes</a> visitors is shared with other other fun domains. (One of them an online casino, another a Russian porno torrent service).

<div class="center-media img-container" alt="Domains for which my Cloudflare certificate is valid">
    {% include svg/dns_cloudflare.jpg.svg %}
    <img src="/assets/imgs/dns_cloudflare.jpg" class="overlay-img">
</div>
<p class="image-label">Domains for which my Cloudflare certificate is valid</p>

### So Fast, So Secure

A nice added benefit is that Cloudflare automatically minifies your text assets (JS, CSS and HTML) and caches your content at it's edge nodes (after all, they are a CDN) so you can expect the website to be smaller and quicker! Also, if someone tries to DDOS me, I should be better off.

In other news, I should win the award for the most verbose blog post title, right?

<hr/>

**Update** (May 6, 2018): As of May 1, 2018, [GitHub pages supports HTTPS for custom domains](https://blog.github.com/2018-05-01-github-pages-custom-domains-https/)! Today, I migrated [cypher.codes](cypher.codes) off of Cloudflare's HTTPS certificates and onto GitHub's [Let's Encrypt](https://letsencrypt.org/) HTTPS certificates. This migrate included a couple of minutes of ~~unexpected~~ downtime.

However, I'm still using Cloudflare for other security-related features (like DNSSEC)!
