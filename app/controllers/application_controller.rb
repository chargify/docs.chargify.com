class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :enforce_domain
  
  def enforce_domain
    if Rails.env.production?
      if !request.ssl? || request.host != 'docs.chargify.io'
        redirect_to({:protocol => 'https://', :host => 'docs.chargify.io'}.merge(params), :status => 301)
      end
    end
  end
end
