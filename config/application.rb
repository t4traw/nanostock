require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Workspace
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    
    config.i18n.default_locale = :ja
    
    Rails.application.config.assets.paths << Rails.root.join('vendor', 'fonts')
    Rails.application.config.assets.paths << Rails.root.join('vendor', 'images')
    Rails.application.config.assets.paths << Rails.root.join('vendor', 'javascripts')
    Rails.application.config.assets.paths << Rails.root.join('vendor', 'stylesheets')
    Rails.application.config.assets.precompile += %w(*.eot *.woff *.woff2 *.ttf *.svg *.otf *.png *.jpg *.jpeg *.gif )
  end
end
