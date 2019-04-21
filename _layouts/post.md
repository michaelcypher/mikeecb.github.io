---
layout: default
---

<span/>

{% if page.has_code %}
  <link rel="stylesheet" type="text/css" href="{{ "/assets/code.css" | relative_url }}">
{% endif %}

<section>
  <h1 class="date">{{ page.title }}</h1>
  <p class="date">
    Posted {{ page.date | date: '%B %d, %Y' }}; {{ page.time_to_read }} min read
  </p>
  {{ content }}
</section>
