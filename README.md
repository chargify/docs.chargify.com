Chargify Documentation
======================

<https://docs.chargify.com>

Contributing
------------

### Running locally

This is a Rails 4 app, with all dependencies managed by Bundler.

#### RVM

If you're not already using [RVM](http://rvm.beginrescueend.com/) and [gemsets](http://rvm.beginrescueend.com/gemsets/) do yourself a favor and get started now.  Then fork our repo from <http://github.com/chargify/docs.chargify.com> and...

    rvm gemset create docs.chargify.com
    rvm gemset use docs.chargify.com
    gem install bundler
    git clone git://github.com/<your githubs>/docs.chargify.com.git
    cd docs.chargify.com
    bundle install
    rails server

You can now browse the docs at http://localhost:3000

#### rbenv

Ensure you have ruby <code>2.1.5</code> installed, if not rbenv will prompt you to install it upon cd'ing into the directory.

    git clone git://github.com/<your githubs>/docs.chargify.com.git
    cd docs.chargify.com
    bundle install
    rails server

### Making changes

All public-facing docs are stored at [doculab/docs](http://github.com/chargify/docs.chargify.com/tree/master/doculab/docs/).

You can make changes there and send us pull requests.  (More on that later)

#### Image specs

All images should be sized to 640px wide.


Colophon
---------

Powered by [Doculab](https://github.com/chargify/doculab)
