Rails.application.routes.draw do
  root :to => 'home#index'


  mount ShopifyApp::Engine, at: '/'
  # namespace :shopify do
  #
  # end
  get "dash", to: "dash#dash"
  get '/products', :to => 'products#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
