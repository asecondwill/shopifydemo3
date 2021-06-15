class Shopify::DashController < ApplicationController
  include ShopifyApp::EmbeddedApp
  include ShopifyApp::RequireKnownShop
  include ShopifyApp::ShopAccessScopesVerification
  # layout 'shopify'

  def dash
    @shop_origin = current_shopify_domain
    @host = params[:host]
  end

  private


end
