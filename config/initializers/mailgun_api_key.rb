MAILGUN_API_KEY = Rails.application.secrets.mailgun[:api_key]
MAILGUN_DOMAIN = Rails.application.secrets.mailer[:smtp_settings][:domain]
