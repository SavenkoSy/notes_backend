# frozen_string_literal: true

class ApplicationContract < Dry::Validation::Contract
  config.messages.default_locale = ENV.fetch('LOCALE', 'en').to_sym
  config.messages.load_paths << 'config/locales/en.yml'
end
