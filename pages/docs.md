---
layout: docs_page
title: Documentation
permalink: /docs
description: Concerto 3 developer and user documentation.
---

This is the documentation for **Concerto 3**. It is a work in progress, more pages will be added as the project develops.

{% assign docs_by_section = site.docs | group_by: "section" %}
{% for section in docs_by_section %}
## {{ section.name }}

{% for doc in section.items %}
- [{{ doc.title }}]({{ doc.url }}){% if doc.description %} — {{ doc.description }}{% endif %}
{% endfor %}
{% endfor %}
