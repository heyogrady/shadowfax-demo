Rails.application.configure do
  config.action_controller.allow_forgery_protection = false
  config.action_controller.perform_caching = false
  config.action_dispatch.show_exceptions = false
  config.action_mailer.asset_host = "http://localhost:3000"
  config.action_mailer.default_url_options = { host: "localhost:3000" }
  config.action_mailer.delivery_method = :test
  config.action_mailer.perform_caching = false
  config.action_mailer.raise_delivery_errors = true
  config.action_view.finalize_compiled_template_methods = false
  config.active_support.deprecation = :stderr
  config.active_support.test_order = :random
  config.assets.debug = false
  config.assets.image_optim = false
  config.cache_classes = true
  config.consider_all_requests_local = true
  config.eager_load = defined?(SimpleCov).present?
  config.public_file_server.enabled = true
  config.public_file_server.headers = {
    "Cache-Control" => "public, max-age=#{1.hour.seconds.to_i}"
  }

  # config.logger = Logger.new(STDOUT)
  # config.log_level = :INFO
  # config.logger.formatter = proc do |severity, _datetime, _progname, msg|
  #   "\n|#{severity}|   #{msg}"
  # end

end
