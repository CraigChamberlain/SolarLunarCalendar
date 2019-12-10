---
title: 1700
layout: home
year: y1700
---
## Year: {{page.title}}
{% assign months = site.data.years[page.year] %}

{% for month in months %}
{{ month.Month }}: {{ month.Days}}
{% endfor %}
