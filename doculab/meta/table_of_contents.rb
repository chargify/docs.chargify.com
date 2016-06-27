Doculab::TableOfContents.define do
  section "Introduction" do
    page "Docs have moved", :permalink => 'index'
  end

  section "Chargify API Basics" do
    page "API Introduction"
    page "API Guidelines"
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
    page "API: Invoices - Payments", :permalink => "api-invoices-payments"
    page "API: Invoices - Charges",  :permalink => "api-invoices-charges"
    page "API: Invoices - Credits",  :permalink => "api-invoices-credits"
    page "API: Metadata"
    page "API: Metafields"
    page "API: Metered Usage"
    page "API: Migrations (Prorated Upgrades/Downgrades)", :permalink => "api-migrations"
    page "API: Notes"
    page "API: Payments"
    page "API: Payment Profiles"
    page "API: Product Families"
    page "API: Products"
    page "API: Quantity Component Allocations", :permalink => "api-quantity-allocations"
    page "API: Referral Codes"
    page "API: Refunds"
    page "API: Refunds - External", :permalink => "api-refunds-external"
    page "API: Renewal Preview"
	page "API: Sites"
    page "API: Statements"
    page "API: Stats"
    page "API: Subscription Preview"
    page "API: Subscriptions"
    page "API: Subscription Override"
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
