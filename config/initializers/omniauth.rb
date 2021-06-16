# frozen_string_literal: true

Rails.application.config.middleware.use(OmniAuth::Builder) do
  provider :shopify,
      ShopifyApp.configuration.api_key,
      ShopifyApp.configuration.secret,
      scope: ShopifyApp.configuration.scope,
      callback_path: '/storify/auth/shopify/callback',
      setup: lambda { |env|
        configuration = ShopifyApp::OmniAuthConfiguration.new(env['omniauth.strategy'], Rack::Request.new(env))
        configuration.build_options
      }
end
