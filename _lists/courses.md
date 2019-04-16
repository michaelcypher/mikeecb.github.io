---
layout: page
title: Courses taken
permalink: /lists/courses
---

Here's a non-exhaustive list of courses I've taken, grouped by institution and year in descending order. I've excluded any I didn't finish or don't remember.

{% for course_group in site.data.courses %}
  <h3>{{course_group.group_name}}</h3>
  <ul>
  {% assign sorted_years = course_group.years | sort: 'year' %}
  {% for year in sorted_years %}
    {% assign sorted_courses = year.courses | sort: 'title' %}
    {% for course in sorted_courses %}
      <li>
        {% if course.link %}
          <a href="{{course.link}}">{{course.title}}</a>{% if course.prof %},{% endif %}
        {% else %}
        {{course.title}}{% if course.prof %},{% endif %}
        {% endif %}
        <i class="no-wrap">{{course.prof}}</i>
      </li>
    {% endfor %}
    <br/>
  {% endfor %}
  </ul>
{% endfor %}
