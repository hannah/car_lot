source 'https://rubygems.org'

gem 'rails', '4.0.4'
gem 'pg'
gem 'sass-rails', '~> 4.0.2'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'
gem 'simple_form'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :development do
  gem 'quiet_assets'
end

group :test do
  gem "capybara"
  gem "valid_attribute"
  gem "shoulda"
  gem "launchy"
  gem "shoulda-matchers"
end

group :test, :production do
  gem "factory_girl_rails"
  gem "rspec-rails"
  gem "pry-rails"
end
