Doculab::TableOfContents.define do
  section "Introduction" do
    page "Chargify Overview", :permalink => 'overview'
    # page "Use Cases"
    page "Terminology"
    page "Web User Interface", :permalink => 'web-ui-overview'
    page "Chargify API", :permalink => 'chargify-api-overview'
  end
  
  section "Quick Start Guide" do
    page "Configure Your Site", :permalink => 'quick-start-site'
    page "Define What You Sell", :permalink => 'quick-start-products'
    page "Sell Subscriptions", :permalink => 'quick-start-subscriptions'
    page "Manage Your Subscriptions", :permalink => 'quick-start-manage-subscriptions'
  end
  
  section "Configuring Products" do
    page "What are Products?", :permalink => 'product-intro'
    page "Defining Product Pricing", :permalink => 'product-pricing'
    page "Product Options"
    page "Product Components"
  end
  
  section "Selling Subscriptions" do
    page "What are Subscriptions?", :permalink => 'subscription-intro'
    page "Selling via Hosted Payment Pages"
    page "Selling via the API", :permalink => 'selling-via-api'
    page "Creating Subscriptions Manually"
  end
  
  section "Managing Subscriptions" do
    page "Viewing & Filtering Subscriptions", :permalink => 'viewing-and-filtering-subscriptions'
    page "Manipulating Subscriptions"
    page "Upgrades/Downgrades"
    page "Reporting Metered Usage"
    page "Reporting Quantity Allocations"
  end
  
  section "Subscription Lifecycle" do
    page "Subscription States"
    page "Subscription Renewals"
    page "Handling Failed Charges"
    page "Dunning"
    page "Cancellations"
  end
  
  section "Gateways & Merchant Accounts" do
    page "Getting a Gateway or Merchant Account"
    page "Configuring Your Gateway"
  end
  
  section "Your Account" do
    page "Creating Sites"
    page "Adding Users"
    page "Merchant Information"
    page "Paying Chargify"
    page "Deleting Products & Subscriptions"
  end
  
  section "Chargify API" do
    page "API Introduction"
    page "API Authentication"
    page "Products", :permalink => "api-products"
    page "Subscriptions", :permalink => "api-subscriptions"
    page "Site Data", :permalink => "api-site-data"
  end
  
  section "Integration" do
    page "Post-backs"
  end
  
  section "Code Samples & Libraries" do
    page "Ruby", :permalink => "ruby-code-samples-and-libraries"
    page "PHP", :permalink => "php-code-samples-and-libraries"
    page "Python", :permalink => "python-code-samples-and-libraries"
    page ".Net", :permalink => "dot-net-code-samples-and-libraries"
  end
end