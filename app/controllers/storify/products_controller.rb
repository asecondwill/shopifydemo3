# frozen_string_literal: true

class Storify::ProductsController < AuthenticatedController
  def index
    @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })

  end

  def show
        @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
  end
end
