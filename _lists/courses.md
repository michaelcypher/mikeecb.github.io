---
layout: page
title: Courses taken
permalink: /lists/courses
---

<p>Here are some of the courses I've taken.</p>

{% for course_group in site.data.courses %}
  <h2>{{course_group.group_name}}</h2>
  <ul class="nav">
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
    {% endfor %}
  </ul>
{% endfor %}
