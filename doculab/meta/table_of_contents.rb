Doculab::TableOfContents.define do
  section "Quick Start Guide" do
    page "Chargify Overview", :permalink => 'overview'
    page "Terminology"
    page "Getting Started"
  end

  section "Sites" do
    page "Sites Intro", :permalink => "sites"
    page "Settings"
    page "Gateway Configuration"
    page "Clearing Site Data"
    page "Email Templates"
    page "HTML Emails", :permalink => 'html-emails'
  end

  section "Products" do
    page "Products Intro"
    page "Product Families"
    page "Product Pricing", :permalink => 'product-pricing'
    page "Product Options"
    page "Product Components"
    page "Coupons"
  end

  section "Subscriptions" do
    page "Subscriptions Intro"
    page "Subscription States"
    page "Statements"
    page "Dunning"
    page "SMS Dunning", :permalink => 'sms-dunning'
    page "Cancellation"
    page "Upgrades/Downgrades"
    page "One-time Charges"
    page "Adjustments"
    page "Refunds"
    page "Reactivation"
    page "Setting Component Allocations"
    page "Billing Dates"
    page "Invoice Billing"
  end

  section "Public Pages" do
    page "Public Pages Intro"
    page "Public Page Default Settings"
    page "Public Signup Page Settings"
    page "Pre-populating Data"
    page "Custom JavaScript and CSS", :permalink => 'custom-javascript-css'
  end

  section "Custom Fields" do
    page "Custom Fields"
  end

  section "Taxes" do
    page "Taxes Intro"
    page "Custom Taxes"
    page "Avalara Managed Sales Tax"
    page "Avalara VAT Tax"
  end

  section "Integrating with your App/Service" do
    page "Billing Portal"
    page "API Integration"
    page "Post-backs"
    page "Webhooks"
    page "Testing"
    page "Exporting Data"
  end

  section "3rd Party Integrations" do
    page "Shopify Integration"
    page "Zferral Integration"
    page "Xero Integration", :permalink => 'xero'
    page "MailChimp Integration", :permalink => 'mailchimp'
    page "Salesforce Integration", :permalink => 'salesforce'
  end

  section 'How To' do
    page 'Shipping Charges'
  end

  section "Referrals" do
    page "Introduction", :permalink => "referrals"
  end

  section "Chargify Direct (Transparent Redirect)" do
    page "Introduction", :permalink => "chargify-direct-introduction"
  end

  section "Communication" do
    page "Communication Overview"
    page "Mass Emailing Subscribers"
  end

  section "Your Account" do
    page "Currency"
    page "Users"
  end

  section "Chargify API Basics" do
    page "API Introduction"
    page "API Authentication"
    page "API Resources"
    page "API Duplicate Prevention", :permalink => "api-duplicate-prevention"
    page "API Code Samples & Libraries", :permalink => "api-code"
  end

  section "API v1 Resources" do
    page "API: Adjustments"
    page "API: Allocations"
    page "API: Billing Portal"
    page "API: Charges"
    page "API: Components"
    page "API: Coupons"
    page "API: Coupon Subcodes", :permalink => "api-coupon-codes"
    page "API: Credits"
    page "API: Customers"
    page "API: Events"
    page "API: Invoices"
    page "API: Metadata"
    page "API: Metafields"
    page "API: Metered Usage"
    page "API: Migrations (Prorated Upgrades/Downgrades)", :permalink => "api-migrations"
    page "API: Payments"
    page "API: Payment Profiles"
    page "API: Products"
    page "API: Quantity Component Allocations", :permalink => "api-quantity-allocations"
    page "API: Refunds"
    page "API: Renewal Preview"
    page "API: Statements"
    page "API: Stats"
    page "API: Subscriptions"
    page "API: Transactions"
    page "API: Webhooks"
  end

  section "API v2 Resources" do
    page "API: Call"
    page "API: Card Update"
    page "API: Signups"
  end

  section "Contributing" do
    page "Documentation Repository"
  end

  # section "Code Samples & Libraries" do
  #   page "API Code Overview", :permalink => "api-code"
  #   page "Ruby", :permalink => "ruby-code"
  #   page "PHP", :permalink => "php-code"
  #   page "Python", :permalink => "python-code"
  #   page ".Net", :permalink => "dot-net-code"
  #   page "ColdFusion", :permalink => "coldfusion-code"
  #   page "Java/Scala", :permalink => "java-code"
  # end
end
