if Rails.env.production? || Rails.env.staging?
  Rails.application.config.log_tags = %i[subdomain uuid]
end
