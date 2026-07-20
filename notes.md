---
layout: default
title: Notes
permalink: /notes/
---

# Notes

<p class="section-intro">
Short governance notes. Each one takes a single technical question and translates it into governance language: what the risk is, who is accountable, and how it would actually be deployed. This is my daily practice of turning technical work into governance reasoning, made public.
</p>

<ul class="note-list">
{% assign sorted_notes = site.notes | sort: 'date' | reverse %}
{% for note in sorted_notes %}
  <li>
    <div class="note-date">{{ note.date | date: "%d %B %Y" }}</div>
    <div class="note-title"><a href="{{ note.url | relative_url }}">{{ note.title }}</a></div>
    <p>{{ note.summary }}</p>
  </li>
{% endfor %}
</ul>
