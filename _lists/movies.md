---
layout: page
title: Movies watched
permalink: /lists/movies
---

<p>Here are some of the movies I've watched.</p>

{% assign sorted = site.data.movies | sort: 'title' %}

<ul class="nav">
  {% for movie in sorted %}
    <li>
      <a href="https://www.themoviedb.org/movie/{{movie.id}}">{{movie.title}}</a>,
      <i class="no-wrap">{{movie.release_date | date: '%B %d, %Y'}}</i>
    </li>
  {% endfor %}
</ul>

<p><b>Total count:</b> {{sorted.size}}</p>
