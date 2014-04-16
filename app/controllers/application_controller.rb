class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :enforce_domain
  
  ensure_security_headers(
    x_frame_options:  'DENY',
    csp:              false,
    hsts:             {max_age: 1.year.to_i, include_subdomains: true},
    x_xss_protection: {value: 1, mode: 'block'}
  )

  def enforce_domain
    if Rails.env.production?
      if !request.ssl? || request.host != 'docs.chargify.io'
        redirect_to({:protocol => 'https://', :host => 'docs.chargify.io'}.merge(params), :status => 301)
      end
    end
  end
end
