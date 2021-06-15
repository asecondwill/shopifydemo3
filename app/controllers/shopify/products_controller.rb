# frozen_string_literal: true

class Shopify::ProductsController < AuthenticatedController
  def index
    @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })

  end

  def show
        @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
  end
end
