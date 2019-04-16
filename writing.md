---
layout: page
title: Writing
---

I enjoy writing blog posts about software engineering and security. I'm in the process of transferring my posts over from my old website, but in the meantime, you can find a subset of my posts below.

<ul>
{% for post in site.posts %}
    <li>
      <a href="{{ post.url }}">{{ post.title }}</a>,
      <i class="no-wrap">{{ post.date | date: '%B %d, %Y'}}</i>
    </li>
{% endfor %}
</ul>
