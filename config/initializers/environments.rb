Rails.env.on(:development) do |config|
  config.action_mailer.default_url_options = { host: ENV['APP_HOST'] }
  config.i18n.available_locales = ['pt-BR', :en]
  config.i18n.default_locale = 'pt-BR'
  config.action_mailer.delivery_method = ENV['SMTP_DELIVERY_METHOD'].to_sym
  config.action_mailer.smtp_settings = YAML.load(ENV['SMTP_SETTINGS'])
end

Rails.env.on(:test) do |config|
  config.i18n.available_locales = :en
  config.i18n.default_locale = :en
  config.action_mailer.delivery_method = ENV['SMTP_DELIVERY_METHOD'].to_sym
  config.action_mailer.smtp_settings = YAML.load(ENV['SMTP_SETTINGS'])
end

Rails.env.on(:production) do |config|
  config.action_mailer.default_url_options = { host: ENV['APP_HOST'] }
  config.i18n.available_locales = ['pt-BR', :en]
  config.i18n.default_locale = 'pt-BR'
  config.action_mailer.delivery_method = ENV['SMTP_DELIVERY_METHOD'].to_sym
  config.action_mailer.smtp_settings = YAML.load(ENV['SMTP_SETTINGS'])
end
