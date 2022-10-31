---
layout: default 
title: Welcome 
---

Dear reader!

Welcome to my new home page, which is a collection of blog posts, downloads, and links.

# Blog

I post frequently on [Twitter](https://www.twitter.com/{{ site.twitter_username| cgi_escape | escape }}).

{% for post in site.posts %}
 - [{{ post.title }}]({{ post.url }}) {% endfor %}

# Scientific papers

 - [Google scholar profile](https://scholar.google.com/citations?user=pv-gMRsAAAAJ&hl=de&oi=ao)
 - Revision of [Analytic sequential Weiss–Weinstein bounds]({% link /downloads/analyticWeissWeinsteinBoundsRevised.pdf %}) (2016)

# Favorite quotations

> If people do not believe that mathematics is simple,
> it is only because they do not realize how complicated life is.

John von Neumann (1903-1957)

> The true logic of this world is the calculus of probabilities.

James Clerk Maxwell (1831-1879)
 
> Ich brauche Informationen. Eine Meinung bilde ich mir selbst.

Charles Dickens (1812-1870)
