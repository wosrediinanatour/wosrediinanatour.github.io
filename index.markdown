---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: default 
title: Welcome!
---

Dear reader! This site was intended to be a blog where I post new articles on a regular base.
Due to beeing short of time, there are only hand-picked numer of posts. Who knows, maybe there will be new ones soon.

# Blog

{% for post in site.posts %}
 - [{{ post.title }}]({{ post.url }})
{% endfor %}

# Interests and experiences

Software development:
 - Linux, Podman/Buildah/Docker
 - C++, Python, Bash, Make, CMake, AWK, LaTeX
 - Embedded to cloud services
 - SIP, RTP
 - SCRUM, waterfall

Telecommunications & electrical engineering:
 - Statistical signal processing
 - Estimation & detection (classification)
 - Wave propagation

# Scientific papers

 - [Google scholar profile](https://scholar.google.com/citations?user=pv-gMRsAAAAJ&hl=de&oi=ao)
 - Revision of [Analytic sequential Weiss–Weinstein bounds]({{ site.url }}/downloads/analyticWeissWeinsteinBoundsRevised.pdf) (2016)

# Favorite quotations

> If people do not believe that mathematics is simple,
> it is only because they do not realize how complicated life is.

John von Neumann (1903-1957)

> The true logic of this world is the calculus of probabilities.

James Clerk Maxwell (1831-1879)
 
