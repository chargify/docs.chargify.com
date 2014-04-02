Chargify Documentation
======================

<https://docs.chargify.io>

Contributing
------------

### Running locally

This is a Rails 3 app, with all dependencies managed by Bundler.  If you're not already using [RVM](http://rvm.beginrescueend.com/) and [gemsets](http://rvm.beginrescueend.com/gemsets/) do yourself a favor and get started now.  Then fork our repo from <http://github.com/chargify/docs.chargify.io> and...

    rvm gemset create docs.chargify.io
    rvm gemset use docs.chargify.io
    gem install bundler
    git clone git://github.com/<your githubs>/docs.chargify.io.git
    cd docs.chargify.io
    bundle install
    rails server

You can now browse the docs at http://localhost:3000

### Making changes

All public-facing docs are stored at [doculab/docs](http://github.com/chargify/docs.chargify.io/tree/master/doculab/docs/).

You can make changes there and send us pull requests.  (More on that later)

#### Image specs

All images should be sized to 640px wide.


Colophon
---------

Powered by [Doculab](https://github.com/chargify/doculab)
