require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ShadowfaxDemo

  class Application < Rails::Application

    config.assets.paths << Rails.root.join("app", "assets", "fonts")
    # Custom directories with classes and modules that are autoloadable.
    config.autoload_paths += [
      "#{config.root}/app/carriers",
      "#{config.root}/app/facades",
      "#{config.root}/app/services",
    ]

    config.time_zone = "Eastern Time (US & Canada)"
    config.to_prepare do
      Devise::Mailer.layout "mailer"
    end

    config.action_mailer.preview_path = "#{Rails.root}/lib/mailer_previews"
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Bootscale needs this to prevent stale cache
    initializer :regenerate_require_cache, before: :load_environment_config do
      Bootscale.regenerate
    end

    # Ensure non-standard paths are eager-loaded in production
    # (these paths are also autoloaded in development mode)
    # config.eager_load_paths += %W(#{config.root}/lib)

  end

end
