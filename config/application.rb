require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module HelloBackend
  class Application < Rails::Application
    config.load_defaults 7.0

    # ... Other configuration settings ...

    # CORS configuration
    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins 'http://localhost:3001' # The origin of your React app
        resource '*', headers: :any,
                      methods: %i[get post put patch delete options]
      end
    end

    # Only loads a smaller set of middleware suitable for API only apps.
    # Middleware like session, flash, cookies can be added back manually.
    # Skip views, helpers, and assets when generating a new resource.
    config.api_only = true
  end
end