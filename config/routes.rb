Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
  get '/overview', to: redirect('https://help.chargify.com/chargify-overview/how-to-use-this-guide.html')
  get '/terminology', to: redirect('https://help.chargify.com/chargify-overview/chargify-glossary.html')
  get '/getting-started', to: redirect('https://help.chargify.com/chargify-overview/getting-started.html')
  get '/tls-upgrade-notice', to: redirect('https://help.chargify.com/announcements/tls-upgrade-notice.html')
  get '/password-requirements', to: redirect('https://help.chargify.com/my-account/my-account-faq.html#what-are-the-password-requirements')
  get '/sites', to: redirect('https://help.chargify.com/sites/sites-intro.html')
  get '/settings', to: redirect('https://help.chargify.com/sites/site-settings.html')
  get '/gateway-configuration', to: redirect('https://help.chargify.com/payment-gateways/gateway-configuration.html')
  get '/clearing-site-data', to: redirect('https://help.chargify.com/sites/clearing-site-data.html')
  get '/email-templates', to: redirect('https://help.chargify.com/communications/email-templates.html')
  get '/html-emails', to: redirect('https://help.chargify.com/communications/html-emails.html')
  get '/products-intro', to: redirect('https://help.chargify.com/products/products-intro.html')
  get '/product-families', to: redirect('https://help.chargify.com/products/product-families.html')
  get '/product-pricing', to: redirect('https://help.chargify.com/products/product-editing.html')
  get '/product-options', to: redirect('https://help.chargify.com/products/product-options.html')
  get '/product-components', to: redirect('https://help.chargify.com/products/product-components.html')
  get '/coupons', to: redirect('https://help.chargify.com/products/product-coupons.html')
  get '/subscriptions-intro', to: redirect('https://help.chargify.com/subscriptions/subscription-intro.html')
  get '/subscription-states', to: redirect('https://help.chargify.com/subscriptions/subscription-states.html')
  get '/statements', to: redirect('https://help.chargify.com/statements/statements-reference.html')
  get '/dunning', to: redirect('https://help.chargify.com/dunning/dunning-intro.html')
  get '/cancellation', to: redirect('https://help.chargify.com/subscriptions/cancellation.html')
  get '/upgrades-downgrades', to: redirect('https://help.chargify.com/subscriptions/upgrades-downgrades.html')
  get '/one-time-charges', to: redirect('https://help.chargify.com/subscriptions/one-time-charges.html')
  get '/adjustments', to: redirect('https://help.chargify.com/subscriptions/adjustments.html')
  get '/refunds', to: redirect('https://help.chargify.com/subscriptions/refunds.html')
  get '/reactivation', to: redirect('https://help.chargify.com/subscriptions/reactivation.html')
  get '/setting-component-allocations', to: redirect('https://help.chargify.com/subscriptions/setting-component-allocations.html')
  get '/billing-dates', to: redirect('https://help.chargify.com/subscriptions/billing-dates.html')
  get '/invoice-billing', to: redirect('https://help.chargify.com/invoices/invoice-reference.html')
  get '/subscriptions-import', to: redirect('https://help.chargify.com/subscriptions/subscriptions-import.html')
  get '/sms-dunning', to: redirect('https://help.chargify.com/dunning/twilio-sms-dunning.html')
  get '/public-pages-intro', to: redirect('https://help.chargify.com/public-pages/public-pages-intro.html')
  get '/public-page-default-settings', to: redirect('https://help.chargify.com/public-pages/public-page-default-settings.html')
  get '/public-signup-page-settings', to: redirect('https://help.chargify.com/public-pages/public-signup-page-settings.html')
  get '/pre-populating-data', to: redirect('https://help.chargify.com/public-pages/pre-populating-data.html')
  get '/custom-javascript-css', to: redirect('https://help.chargify.com/public-pages/custom-javascript-and-css.html')
  get '/custom-fields', to: redirect('http://help.chargify.com/custom-fields/custom-fields-intro.html')
  get '/taxes-intro', to: redirect('https://help.chargify.com/taxes/introduction.html')
  get '/custom-taxes', to: redirect('https://help.chargify.com/taxes/custom-taxes.html')
  get '/avalara-managed-sales-tax', to: redirect('https://help.chargify.com/taxes/avalara-managed-sales-tax.html')
  get '/avalara-vat-tax', to: redirect('https://help.chargify.com/taxes/avalara-vat-tax.html')
  get '/billing-portal', to: redirect('https://help.chargify.com/billing-portal/introduction.html')
  get '/webhooks', to: redirect('https://help.chargify.com/webhooks/introduction.html')
  get '/testing', to: redirect('https://help.chargify.com/sites/testing-your-site.html')
  get '/exporting-data', to: redirect('https://help.chargify.com/reports/exporting-data.html')
  get '/zferral-integration', to: redirect('https://help.chargify.com/integrations/zferral.html')
  get '/xero', to: redirect('https://help.chargify.com/xero/xero-intro.html')
  get '/mailchimp', to: redirect('https://help.chargify.com/integrations/mailchimp.html')
  get '/salesforce', to: redirect('https://help.chargify.com/salesforce/salesforce-intro.html')
  get '/shipping-charges', to: redirect('https://help.chargify.com/subscriptions/shipping-charges.html')
  get '/mobile-responsive', to: redirect('https://help.chargify.com/public-pages/mobile-responsive.html')
  get '/mobile-stats-page', to: redirect('https://help.chargify.com/public-pages/mobile-responsive.html')
  get '/referrals', to: redirect('https://help.chargify.com/referrals/introduction.html')
  get '/communication-overview', to: redirect('https://help.chargify.com/communications/communications-intro.html')
  get '/mass-emailing-subscribers', to: redirect('https://help.chargify.com/communications/mass-emailing-subscribers.html')
  get '/currency', to: redirect('https://help.chargify.com/sites/currency.html')
  get '/users', to: redirect('https://help.chargify.com/my-account/users.html')
  get '/sales-report-introduction', to: redirect('http://help.chargify.com/reports/sales-report-intro.html')
  get '/hosted-page-settings', to: redirect('https://help.chargify.com/public-pages/public-signup-page-settings.html')
  get '/chargify-direct-signups', to: redirect('https://docs.chargify.com/api-signups')
  get '/beta-label', to: redirect('https://help.chargify.com/support/support-faq.html#what-does-it-mean-for-a-chargify-feature-to-be-beta')
  get '/taxes', to: redirect('https://help.chargify.com/taxes/introduction.html')

  get '/api-introduction', to: redirect('https://reference.chargify.com/v1/basics/introduction')
  get '/api-guidelines', to: redirect('https://developer.chargify.com/content/getting-started/api-guidelines.html')
  get '/api-authentication', to: redirect('https://developer.chargify.com/content/getting-started/authentication.html')
  get '/api-resources', to: redirect('https://reference.chargify.com')
  get '/api-duplicate-prevention', to: redirect('https://developer.chargify.com/content/advanced/duplicate-prevention.html')
  get '/api-code', to: redirect('https://developer.chargify.com/content/ecosystem/api-code-samples.html')
  get '/api-adjustments', to: redirect('https://reference.chargify.com/v1/adjustments/adjustment-intro')
  get '/api-allocations', to: redirect('https://reference.chargify.com/v1/components-quantity-allocations')
  get '/api-billing-portal', to: redirect('https://reference.chargify.com/v1/billing-portal')
  get '/api-charges', to: redirect('https://reference.chargify.com/v1/charges')
  get '/api-components', to: redirect('https://reference.chargify.com/v1/components')
  get '/api-coupons', to: redirect('https://reference.chargify.com/v1/coupons')
  get '/api-coupon-codes', to: redirect('https://reference.chargify.com/v1/coupons-subcodes')
  get '/api-credits', to: redirect('https://reference.chargify.com')
  get '/api-customers', to: redirect('https://reference.chargify.com/v1/customers')
  get '/api-events', to: redirect('https://reference.chargify.com/v1/events')
  get '/api-invoices', to: redirect('https://reference.chargify.com/v1/invoices')
  get '/api-invoices-payments', to: redirect('https://reference.chargify.com/v1/invoices-payments')
  get '/api-invoices-charges', to: redirect('https://reference.chargify.com/v1/invoices-charges')
  get '/api-invoices-credits', to: redirect('https://reference.chargify.com/v1/invoices-credits')
  get '/api-metadata', to: redirect('https://reference.chargify.com/v1/custom-fields-metadata')
  get '/api-metafields', to: redirect('https://reference.chargify.com/v1/custom-fields-metafields')
  get '/api-metered-usage', to: redirect('https://reference.chargify.com/v1/components-metered-usage')
  get '/api-migrations', to: redirect('https://reference.chargify.com/v1/migrations-prorated-upgrades-downgrades')
  get '/api-notes', to: redirect('https://reference.chargify.com/v1/notes')
  get '/api-payments', to: redirect('https://reference.chargify.com/v1/payments')
  get '/api-payment-profiles', to: redirect('https://reference.chargify.com/v1/payment-profiles')
  get '/api-product-families', to: redirect('https://reference.chargify.com/v1/product-families')
  get '/api-products', to: redirect('https://reference.chargify.com/v1/products')
  get '/api-quantity-allocations', to: redirect('https://reference.chargify.com/v1/components-quantity-allocations')
  get '/api-referral-codes', to: redirect('https://reference.chargify.com/v1/referral-codes')
  get '/api-refunds', to: redirect('https://reference.chargify.com/v1/refunds')
  get '/api-refunds-external', to: redirect('https://reference.chargify.com/v1/refunds-external')
  get '/api-renewal-preview', to: redirect('https://reference.chargify.com/v1/renewal-preview')
  get '/api-sites', to: redirect('https://reference.chargify.com/v1/sites')
  get '/api-statements', to: redirect('https://reference.chargify.com/v1/statements')
  get '/api-stats', to: redirect('https://reference.chargify.com/v1/stats')
  get '/api-subscription-preview', to: redirect('https://reference.chargify.com/v1/subscriptions-preview')
  get '/api-subscriptions', to: redirect('https://reference.chargify.com/v1/subscriptions')
  get '/api-subscription-override', to: redirect('https://reference.chargify.com/v1/subscriptions-override')
  get '/api-transactions', to: redirect('https://reference.chargify.com/v1/transactions')
  get '/api-webhooks', to: redirect('https://reference.chargify.com/v1/webhooks')
  get '/api-call', to: redirect('https://developer.chargify.com/content/chargify-direct/api-call.html')
  get '/api-card-update', to: redirect('https://developer.chargify.com/content/chargify-direct/card-update.html')
  get '/api-signups', to: redirect('https://developer.chargify.com/content/chargify-direct/signups.html')
  get '/chargify-direct-introduction', to: redirect('https://developer.chargify.com/content/chargify-direct/chargify-direct.html')
  get '/documentation-repository', to: redirect('https://help.chargify.com')

  get '/', to: redirect('https://help.chargify.com')
  get '/:anything', to: redirect('https://help.chargify.com')
end
