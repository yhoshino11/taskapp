source 'https://rubygems.org'
gem 'rails'
gem 'sqlite3'
gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'
gem 'jquery-rails'
gem 'turbolinks'

group :development do
  gem 'capistrano'
  gem 'capistrano-rails',   require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano-rbenv',   require: false
  gem 'capistrano3-unicorn'
end

group :development, :test do
  gem 'guard-rspec'
  gem 'rspec-rails'
end

group :test do
  gem 'factory_girl_rails'
  gem 'database_cleaner'
  gem 'faker'
  gem 'capybara'
  gem 'launchy'
  gem 'shoulda-matchers'
  gem 'selenium-webdriver'
  gem 'simplecov', require: false
end

group :production do
  gem 'unicorn'
end
