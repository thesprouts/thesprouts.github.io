# README

This repository contains the source for [sprout & co's website](http://thesprouts.org).  That site is currently in transition from an old Sinatra app to a static, GitHub Pages site.  If you're having trouble or have spotted an issue the site, please [let us know](mailto:three.two.one-contact@thesprouts.org).

## Overview

sprout's site is statically generated using [jekyll](http://jekyllrb.com/).

### Developing on `thesprouts.org`

To get started working on sprout's site, I recommend you [set up rvm](https://rvm.io/rvm/install/).  You can do this by running `\curl -sSL https://get.rvm.io | bash` in your Terminal and following the instructions on screen (specifically, running `source…` at the end of the setup).

After this, run `rvm list known` to see a list of available vesions of Ruby.  Choose the newest MRI-Ruby before `ruby-head`.  As of this writing, that is `2.4`.  Install this version of Ruby by running `rvm install 2.4`.

After that is complete, you should be able to run `rvm use 2.4` and then run `ruby -v` and see `2.4`.

Assuming that worked, set that version of ruby to your default by running `rvm use 2.4 --default`.

Now, you should be able to run `gem install bundler` to install [`bundler`](https://bundler.io/), a package manager for Ruby.

Once this is set up, you should be able to:

    git clone https://github.com/thesprouts/thesprouts-org
    cd thesprouts.org
    bundle install
    jekyll serve
    open http://localhost:4000