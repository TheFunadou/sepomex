# frozen_string_literal: true

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins(
      'https://igaproductos.com',
      'https://www.igaproductos.com',
      'https://adminpanel.igaproductos.com',

      # Desarrollo
      'http://localhost:3000',
      'http://localhost:3001',
      'http://127.0.0.1:3000',
      'http://127.0.0.1:3001'
    )

    resource '*',
      headers: :any,
      methods: %i[get post put patch delete options],
      credentials: true,
      max_age: 3600
  end
end
