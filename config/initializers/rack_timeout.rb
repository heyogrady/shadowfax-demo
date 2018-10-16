if Rails.env.staging? || Rails.env.production? # rubocop:disable Rails/UnknownEnv
  Rack::Timeout.timeout = if ENV["RACK_TIMEOUT_SECONDS"]
                            ENV["RACK_TIMEOUT_SECONDS"].to_i
                          else
                            25 # seconds
                          end
end
