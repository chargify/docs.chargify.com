Chargify Documentation
======================

<https://docs.chargify.com>

Contributing
------------

### Running locally

This is a Rails 4 app, with all dependencies managed by Bundler.  

#### Fork

First, fork our repo from <http://github.com/chargify/docs.chargify.com>

#### RVM

If you're not already using [RVM](http://rvm.beginrescueend.com/) and [gemsets](http://rvm.beginrescueend.com/gemsets/) do yourself a favor and get started now.

    rvm gemset create docs.chargify.com
    rvm gemset use docs.chargify.com
    gem install bundler
    git clone git://github.com/<your githubs>/docs.chargify.com.git
    cd docs.chargify.com
    bundle install
    rails server

You can now browse the docs at http://localhost:3000

#### rbenv

If you prefer to use [rbenv](https://github.com/sstephenson/rbenv), the instructions are similar.

    git clone git://github.com/<your githubs>/docs.chargify.com.git
    cd docs.chargify.com
    rbenv install 2.0.0-p481
    gem install bundler
    bundle install
    rbenv rehash
    rails server
    
You can now browse the docs at http://localhost:3000

### Ports

If you are behind a firewall, you may need to open port 9418 for the <code>git</code> protocol before <code>bundle install</code> will work.

### Making changes

All public-facing docs are stored at [doculab/docs](http://github.com/chargify/docs.chargify.com/tree/master/doculab/docs/).

You can make changes there and send us pull requests.  (More on that later)

#### Images

All images should be sized to 640px wide.

Images are stored in the <code>public/images/doculab/</code> directory and displayed with the <code>!/images/doculab/filename.png!</code> syntax.


Colophon
---------

Powered by [Doculab](https://github.com/chargify/doculab)
