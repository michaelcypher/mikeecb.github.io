---
layout: page
title: Movies watched
permalink: /lists/movies
---

I love movies, so here's a non-exhaustive list of movies I've watched over the years. I've excluded any I didn't finish or any whose plot I don't remember.

{% assign sorted = site.data.movies | sort: 'title' %}

<b>Total count:</b> {{sorted.size}}

<ul>
{% for movie in sorted %}
    <li>
        <a href="https://www.themoviedb.org/movie/{{movie.id}}">{{movie.title}}</a>,
        <i class="no-wrap">{{movie.release_date}}</i>
    </li>
{% endfor %}
</ul>
