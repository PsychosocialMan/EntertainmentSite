require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)



module Accordions
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    # где библиотека I18n должна искать наши переводы
    I18n.load_path += Dir[Rails.root.join('lib', 'locale', '*.{rb,yml}')]

# Белый список локалей, доступных приложению
    I18n.available_locales = [:en, :ru]

# устанавливаем локаль по умолчанию на что-либо другое, чем :en
    I18n.default_locale = :ru
  end
end
