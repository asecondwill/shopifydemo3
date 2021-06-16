Rails.application.routes.draw do



  mount ShopifyApp::Engine, at: '/shopify'
  namespace :shopify do
    root :to => 'splash#splash'
    get "splash", to: "splash#splash"
    get "dash", to: "dash#dash"
    get '/products', :to => 'products#index'
    get '/products/show', :to => 'products#show'
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
