class Storify::SplashController < ApplicationController
  #include ShopifyApp::EmbeddedApp
  include ShopifyApp::RequireKnownShop
  include ShopifyApp::ShopAccessScopesVerification
  layout 'storify'
  skip_before_action :verify_authenticity_token

  def splash
    @shop_origin = current_shopify_domain
    @host = params[:host]

  end

  private


end
