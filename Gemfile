source 'https://rubygems.org'

gem 'rails',        '5.1.4'
gem 'bootstrap-sass'
gem 'puma'
gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder'

group :development, :test do
  gem 'sqlite3'
  gem 'byebug', platform: :mri

  #Rspec関連gem
  gem 'rspec-rails'
  gem 'factory_bot_rails'
  gem 'rails-controller-testing'
  gem 'capybara'
  gem 'guard'
  gem 'guard-rspec'
end

group :development do
  gem 'web-console'
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen'
end

group :production do
  gem 'pg', '0.21.0'
end

# Windows環境ではtzinfo-dataというgemを含める必要があります
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]