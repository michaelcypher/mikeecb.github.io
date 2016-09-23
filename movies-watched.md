---
layout: post
title: "Movies Watched"
back:
    text: "About"
    url: "/about"
---

I enjoy movies and love recording stuff, so here's a non-exhaustive list of movies I've watched over the years. I've starred the ones I particularly enjoyed and recommend and I've also excluded any I didn't finish or any whose plot I don't remember. If you're interested in how I generated this list, check out my [movie-tracker tool](https://github.com/mikeecb/movie-tracker) and [blog post]({% post_url 2018-03-15-tracking-watched-movies-movie-tracker %}).

{% assign movies = site.data.movies %}
{% assign sorted_movies = movies | sort: 'title' %}

{% assign counter = 0 %}
{% for movie in sorted_movies %}
    {% assign counter = counter | plus: 1 %}
{% endfor %}

<div class="div-with-margin">
<h3 class="inline no-margin">All Movies ({{ counter }})</h3>
</div>
<table>
    {% for movie in sorted_movies %}
        {% assign release_date = movie.release_date | split: '-' %}
        {% assign release_year = release_date[0] %}
        <tr>
            <td>
            <a class="{{ class }}" href="https://www.themoviedb.org/movie/{{ movie.id }}">{{ movie.title }}</a>,
            <time class="small">{{ release_year }}</time>
            </td>
        </tr>
    {% endfor %}
</table>
