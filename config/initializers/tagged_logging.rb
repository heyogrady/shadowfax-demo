if Rails.env.production? || Rails.env.staging? # rubocop:disable Rails/UnknownEnv
  Rails.application.config.log_tags = %i[subdomain uuid]
end
