---
layout: post
usemathjax: false
lang: en
title: Install and update Jekyll in Fedora
---
Using Jekyll in Fedora is not so straight forward as it looks at first.

# Install Jekyll and Bundle

You need Jekyll, Ruby, and GCC/C++. Furthermore the Ruby's `bundler` tool, which has to be configured.

0. If you want to use Jekyll on your Github account, please follow the instructions at <https://jekyllrb.com/docs/github-pages/>.

1. <https://cassidyjames.com/blog/github-pages-jekyll-fedora-silverblue/> has a nice recipe for the basic setup of Jekyll and the necessary setup of Ruby and Bundler.

2.  How to use Bundle for Jekyll is explained in the [Tutorial](https://jekyllrb.com/docs/step-by-step/01-setup/). After these steps you will have a Gemfile with all the Jekyll's Ruby dependencies.

# Update

`bundle update` (it will update the versions in `Gemfile`)


