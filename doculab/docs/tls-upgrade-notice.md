# What's happening?

On January 12, 2016 Chargify will no longer support TLS 1.0 or TLS 1.1 over HTTPS on the chargify.com domain.  Any older browsers or API clients that do not support TLS 1.2 will no longer work after this date.  This change is mandated by the PCI Security Council and affects all merchants and service providers processing or transmitting credit card data.

If you use webhooks, your non-test endpoints will also be required to support HTTPS and TLS 1.2 in order to receive webhooks from us after January 12, 2016.  Any endpoints that do not support a TLS 1.2 connection will be disabled.

## Why are we making this change?

The PCI Security Council sets the rules on which technologies are acceptable for use in transmitting cardholder data.  They have explicitly identified TLS 1.0 as no longer being a strong form of encryption because it is vulnerable to many known attacks.

This is not an action Chargify is taking alone. **EVERY** website that transmits or processes credit card data will be making this change.  If you or your customers are using an insecure or unsupported browser or API client, you will find that all secure websites will stop working very soon.

# How do I know if I'm affected?

Visit [https://app.chargify.com/tls_check](https://app.chargify.com/tls_check).  You'll see two sets of checks:

* Webhook Endpoint checks will confirm if your endpoints are ready for the switchover.  If there's a problem with us connecting to one of your endpoints, it'll be listed here.
* API checks are a list of recent connections you've made to our API that may have trouble after January 12, 2016.

*Caveat* We reviewed recent connections made to your Chargify subdomains to try and help you.  But there may be false-negatives or false-positives.  This method is imperfect because:

* Sometimes an API client using an older version will auto-upgrade when we remove support.
* We ignored connections from browser-like user-agents (Firefox, Gecko, Mozilla, Chrome, AppleWebKit, Safari, etc).  If your API client “fakes” a browser user-agent, it’s not included here.
* Connections to "https://app.chargify.com" (such as Chargify API v2) are not included

A comprehensive list of client library support is available here: [https://www.ssllabs.com/ssltest/clients.html](https://www.ssllabs.com/ssltest/clients.html)

## How to test yourself

1. Point your browser, API client, or code to [https://tlscheck.chargify.com](https://tlscheck.chargify.com).  
2. You should expect to see "ConnectionOK" (with a 200 response code).  
  * If you see that, then you have successfully connected and are all set.  
  * If your client throws an SSL, TLS, Connection, or Negotiation error, then you will need to upgrade your language or library in order to remain compatible.

## API Library support

If you have code that connects with the Chargify API, you must ensure that it will continue to work after January 12, 2016.  Each language and library is different, but we've identified the popular ones that may be of concern.  

These languages will need significant changes/upgrades in order to work:

* Java 6u45 / 7u45
* .NET before 4.5 (does not support TLS 1.2)
* .NET 4.5 (must be have setting changed to explicitly enable TLS 1.2)
* OpenSSL 0.9.8

Most dynamic languages such as Ruby, PHP, & Python rely on the underlying operating system's OpenSSL version.  You can check it by running `openssl version`.  1.0.1 in the minimum required.

We would be happy to help you ensure compatibility in any way we can.  However, please keep in mind that we are not experts in every language or framework and so we aren't able to test or fix your code for you.

## Browser support

Most browsers have supported TLS 1.2 for several years.  

The following browsers **DO NOT** support TLS 1.2 and will no longer work.

* Google Chrome 29
* Firefox 26
* Internet Explorer 10
* Safari 8
* iOS 4
* Android 4

## Chargify Direct

Chargify Direct, when used as a browser-side transparent redirect will not affect **MOST** end users with modern browsers. It will fail for customers with very old browsers that are unable to initiate a secure connection.  Those customers are likely to find that all secure websites will start failing for them soon and will be forced to upgrade anyway, so the impact is expected to be minimal.

Note that Chargify V2 signups (NOT transparent redirect) must be tested to make sure they can make API calls successfully.

## Shopify Merchants

If you use Chargify solely through Shopify, you do not need to take any action. We have already ensured everything will continue to work.


# Further Reading & Resources

* [http://blog.securitymetrics.com/2015/04/pci-3-1-ssl-and-tls.html](http://blog.securitymetrics.com/2015/04/pci-3-1-ssl-and-tls.html)
* [https://www.ssllabs.com/ssltest/clients.html](https://www.ssllabs.com/ssltest/clients.html)
* [https://www.howsmyssl.com/](https://www.howsmyssl.com/)

# <a name="language-specific-instructions"></a>Language specific instructions

## .NET

* **.NET 4.6** -  TLS 1.2 is used automatically.  No changes are necessary.
* **.NET 4.5** - The SecurityProtocolType needs to be changed to `Tls12` (using the SecurityProtocol Setter)
  * [https://msdn.microsoft.com/en-us/library/system.net.securityprotocoltype(v=vs.110).aspx](https://msdn.microsoft.com/en-us/library/system.net.securityprotocoltype%28v=vs.110%29.aspx)
  * [https://msdn.microsoft.com/en-us/library/system.net.servicepointmanager.securityprotocol(v=vs.110).aspx](https://msdn.microsoft.com/en-us/library/system.net.servicepointmanager.securityprotocol%28v=vs.110%29.aspx)
* **.NET 3 and below** - Must be upgraded to 4.5

## Ruby

Ruby uses the system openssl.  OpenSSL v0.9.8 will no longer work, but later versions work without any changes required.  With Ruby 1.9+ you can test the connection with this script:
should we create gist and embed the follow code snippets into the docs and blog posts? At least for WP, gist is the cleanest way to do code snippets

    require 'openssl'
    require 'net/http'
    http = Net::HTTP.new('tlscheck.chargify.com', 443)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_PEER
    http.start do
      http.request_get('/') do |response|
        puts response.body
      end
    end

    # You should expect to see:
    # ConnectionOK
    # => #<Net::HTTPOK 200 OK readbody=true>


## Python

You can test if the connection works with:

    import urllib2
    urllib2.urlopen("https://tlscheck.chargify.com").read()

    # Expected: 'ConnectionOK\n'

## PHP

You can check if PHP will work with the following script:

    <?php
    $ch = curl_init('https://www.howsmyssl.com/a/check');
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    $data = curl_exec($ch);
    curl_close($ch);

    $json = json_decode($data);
    echo $json->tls_version;
    ?>

    <?php    
    $curl_info = curl_version();
    echo $curl_info['ssl_version'];
    ?>

You should see TLS 1.2 and OpenSSL version of at least 1.0.1
