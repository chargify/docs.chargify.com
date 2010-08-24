Doculab::TableOfContents.define do
  section "Quick Start Guide" do
    page "Chargify Overview", :permalink => 'overview'
    page "Terminology"
    page "Getting Started"
    page "Define What You Sell", :permalink => 'quick-start-products'
    page "Sell Subscriptions", :permalink => 'quick-start-subscriptions'
    page "Manage Your Subscriptions", :permalink => 'quick-start-manage-subscriptions'
  end
  
  section "Sites" do
    page "Sites Intro", :permalink => "sites"
    page "Settings"
  end
  
  section "Products" do
    page "Products Intro"
    page "Product Families"
    page "Product Pricing", :permalink => 'product-pricing'
    page "Product Options"
    page "Product Components"
    page "Coupons"
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
    page "One-time Charges"
    page "Refunds"
    page "Reactivation"
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
    page "What are Gateways and Merchant Accounts?"
    page "Getting a Gateway or Merchant Account"
    page "Configuring Your Gateway"
  end
  
  section "Your Account" do
    page "Currency"
    page "Users"
    page "Merchant Information"
    page "Paying Chargify"
    page "Deleting Products & Subscriptions"
  end
  
  section "Integration" do
    page "Integration Overview"
    page "Hosted Page Integration"
    page "API Integration"
    page "Post-backs"
  end
  
  section "Chargify API" do
    page "API Introduction"
    page "API Authentication"
    page "API Response Codes"
    page "API Resources"
    page "Products", :permalink => "api-products"
    page "Subscriptions", :permalink => "api-subscriptions"
    page "Site Data", :permalink => "api-site-data"
    page "Metered Usage", :permalink => "api-metered-components"
    page "Quantity Allocations", :permalink => "api-quantity-based-components"
    page "Refunds", :permalink => "api-refunds"
    page "Coupons", :permalink => "api-coupons"
  end
  
  section "Code Samples & Libraries" do
    page "API Code Overview", :permalink => "api-code"
    page "Ruby", :permalink => "ruby-code"
    page "PHP", :permalink => "php-code"
    page "Python", :permalink => "python-code"
    page ".Net", :permalink => "dot-net-code"
    page "ColdFusion", :permalink => "coldfusion-code"
    page "Java/Scala", :permalink => "java-code"
  end
end