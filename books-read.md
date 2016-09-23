---
layout: post
title: "Books Read"
back:
    text: "About"
    url: "/about"
---

I enjoy reading and love recording stuff, so here's a non-exhaustive list of books I've read over the years. I've starred the ones I particularly enjoyed and recommend and I've also excluded any I didn't finish or any whose plot I don't remember.

{% for book_file in site.data.books %}

{% assign books = book_file[1].books %}
{% assign sorted_books = books | sort: 'name' %}

{% assign counter = 0 %}
{% for book in sorted_books %}
    {% assign counter = counter | plus: 1 %}
{% endfor %}

<div class="div-with-margin">
<h3 class="inline no-margin">{{ book_file[1].title }} ({{ counter }})</h3>
</div>
<table>
    {% for book in sorted_books %}
        <tr>
            {% if book.star %}
                {% assign class = "starred" %}
            {% else %}
                {% assign class = "" %}
            {% endif %}
            <td>
            <a class="{{ class }}" href="{{ book.amazon_link }}">{{ book.name }}</a>,
            <span class="light small">{{ book.author }}</span>
            </td>
        </tr>
    {% endfor %}
</table>
{% endfor %}
