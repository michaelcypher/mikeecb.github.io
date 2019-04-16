---
layout: default
---

<span/>

{% if page.has_code %}
  <link rel="stylesheet" type="text/css" href="{{ "/assets/code.css" | relative_url }}">
{% endif %}

<section>
  <h2>{{ page.title }}</h2>

  {% if page.date %}
  <p class="small">Posted {{ page.date | date: '%B %d, %Y' }}; {{ page.time_to_read }} min read</p>
  {% endif %}

  {{ content }}
</section>
