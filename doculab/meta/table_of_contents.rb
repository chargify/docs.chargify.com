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
    page "Hosted Page Settings"
    page "Clearing Site Data"
  end

  section "Products" do
    page "Products Intro"
    page "Product Families"
    page "Product Pricing", :permalink => 'product-pricing'
    page "Product Options"
    page "Product Components"
    page "Coupons"
    page "Taxes"
  end

  section "Subscriptions" do
    page "Subscriptions Intro"
    page "Subscription States"
    page "Statements"
    page "Dunning"
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

  section "Integration" do
    page "Integration Overview"
    page "Hosted Page Integration"
    page "API Integration"
    page "Post-backs"
    page "Webhooks"
    page "Testing"
    page "Exporting Data"
  end

  section 'How To' do
    page 'Shipping Charges'
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
    page "API Code Samples & Libraries", :permalink => "api-code"
  end

  section "Chargify API Resources" do
    page "API: Adjustments"
    page "API: Allocations"
    page "API: Charges"
    page "API: Components"
    page "API: Coupons"
    page "API: Credits"
    page "API: Customers"
    page "API: Events"
    page "API: Metered Usage"
    page "API: Migrations (Prorated Upgrades/Downgrades)", :permalink => "api-migrations"
    page "API: Products"
    page "API: Quantity Component Allocations", :permalink => "api-quantity-allocations"
    page "API: Refunds"
    page "API: Statements"
    page "API: Stats"
    page "API: Subscriptions"
    page "API: Transactions"
    page "API: Webhooks"
  end

  section "3rd Party Integrations" do
    page "Zferral Integration"
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
