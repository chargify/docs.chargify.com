Chargify
===========
Chargify simplifies recurring billing for Web 2.0 and SaaS companies. With Chargify you can:

* Charge your customers' credit cards
* Manage recurring subscriptions effortlessly
* Seamlessly integrate our API into your site
* Gain business intelligence from your billing

Deploying to Heroku
-------------------
To use Chargify on Heroku, install the (add-on) add-on:

    $ heroku addons:add chargify

You now have the Chargify add-on installed for you app. 

Local Setup: Step 1 - Log into the Chargify admin interface to complete setup and create a Site
-----------
Before you can start using Chargify in you your app, you will need to log into the Chargify admin interface. From your Heroku account, select Chargify from the Add-ons dropdown and you will be redirected to Chargify. Once there, you will be asked to provide a name and email address for your app. Next, you will need to configure a site. Information on how to create a site can be found here: [http://docs.chargify.com/quick-start-site](http://docs.chargify.com/quick-start-site). Make note of the subdomain you selected while configuring your site, you will need it for Step 3.

Local setup: Step 2 - Install the chargify_api_ares gem
-----------
The [chargify_api_ares](http://rubygems.org/gems/chargify_api_ares) gem is a Ruby wrapper for the [Chargify](http://chargify.com) API that leverages ActiveResource.
It allows you to interface with the Chargify API using simple ActiveRecord-like syntax.

You can install the gem via:
    $ gem install chargify_api_ares

Local setup: Step 3 - Create a Chargify configuration file in your app
-----------
Finally, you will need to create a chargify configuration file in your app. For a Rails app, we recommend storing this file in `./config/initializers/chargify.rb`.

The contents of the file should look like this:

    Chargify.configure do |c|
      c.subdomain = 'mysubdomain'
      c.api_key   = ENV['CHARGIFY_API_KEY']
    end

The `api_key` is automatically accessible to your app via a Heroku environment variable. Replace 'mysubdomain' with the value you set in Step 1.

That's it, you are now setup to use Chargify. For more information, see the links below.

Further reading:

* (Chargify Docs)[http://docs.chargify.com]
* (Chargify Support)[http://support.chargify.com
* (Chargify on Twitter)[http://twitter.com/chargify]
