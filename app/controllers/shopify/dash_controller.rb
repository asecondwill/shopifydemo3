class Shopify::DashController < AuthenticatedController

  def dash
    @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
  end

  private


end
