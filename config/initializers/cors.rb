# frozen_string_literal: true

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'igaproductos.com',
            'www.igaproductos.com',
            'api.igaproductos.com',
            'adminpanel.igaproductos.com',
            'sepomex.igaproductos.com',
            'localhost:3000',
            'localhost:3001',
            '127.0.0.1'

    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options],
      credentials: true,
      max_age: 3600
  end
end
