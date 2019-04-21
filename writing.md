---
layout: page
title: Writing
---

<p>I occasionally write about things that interest me.</p>

<ul class="nav">
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url }}">{{ post.title }}</a>,
      <i class="no-wrap">{{ post.date | date: '%B %d, %Y'}}</i>
    </li>
  {% endfor %}
</ul>
