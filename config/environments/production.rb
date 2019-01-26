# Production setup is nearly identical to staging, with a few overrides

require_relative "./staging"

Rails.application.configure do

  config.active_record.dump_schema_after_migration = false

  # Needs to be false on Heroku
  config.assets.initialize_on_precompile = false

  # TODO: move JS to webpacker
  config.assets.js_compressor = :uglifier

  config.log_level = :debug

end
