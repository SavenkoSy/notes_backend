# frozen_string_literal: true

source 'https://rubygems.org'

ruby '3.3.0'

gem 'rails',                    '~> 7.1.3', '>= 7.1.3.2'

gem 'mysql2',                   '~> 0.5'
gem 'puma',                     '>= 5.0'

gem 'active_model_serializers', '~> 0.10.0'
gem 'bootsnap',                 '~> 1.18', require: false
gem 'dry-validation',           '~> 1.10'
gem 'faker',                    '~> 3.2'
gem 'rswag',                    '~> 2.13'
gem 'sidekiq',                  '~> 7.2'
gem 'sidekiq-cron',             '~> 1.12'

group :development, :test do
  gem 'byebug',                 '~> 11.1.3', platforms: %i[mri mingw x64_mingw]
  gem 'dotenv',                 '~> 3.1'
  gem 'factory_bot_rails',      '~> 6.4'
  gem 'rubocop',                '~> 1.62', require: false
  gem 'rubocop-performance',    '~> 1.20'
  gem 'rubocop-rails',          '~> 2.24'
  gem 'rubocop-rspec',          '~> 2.27'
end

group :development do
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

group :test do
  gem 'rspec-rails',            '~> 6.1'
  # gem 'rspec-sidekiq',          '~> 3.1', '>= 3.1.0'
end

gem 'tzinfo-data', platforms: %i[windows jruby]
