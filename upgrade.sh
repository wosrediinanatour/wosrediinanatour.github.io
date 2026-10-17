#!/usr/bin/env bash
#
#
printf "Upgrade Jekyll...\n"

clean() {
   printf "Clean up...\n"
   rm Gemfile
   rm Gemfile.lock
}

install() {
   printf "Setup...\n"
   # https://jekyllrb.com/docs/step-by-step/10-deployment/#gemfile
   gem install jekyll bundler
   bundle config set --local path 'vendor/bundle'
   bundle install
   bundle init
   bundle add jekyll minima
}

clean
install

