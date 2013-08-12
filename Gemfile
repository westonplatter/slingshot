source 'https://rubygems.org'

gem 'rails', '3.2.14'
gem 'pg'
gem 'json'
gem 'jquery-rails'
gem 'zeus'
gem 'devise'
gem 'omniauth-cas', '1.0.1' # downgraded to 1.0.1 to fix CAS host issues
gem 'bootstrap-sass'
gem 'haml-rails'
gem 'activeadmin', github: 'gregbell/active_admin'

group :assets do
  gem 'sass-rails',   '~> 3.2'
  gem 'coffee-rails', '~> 3.2'
  gem 'uglifier',     '>= 1.0.3'
end

group :development, :test do 
  gem 'rspec-rails'
  gem 'database_cleaner'
  gem 'shoulda'
  gem 'factory_girl_rails'
  gem 'zeus'
  gem 'guard-rspec'
end

gem 'unicorn'
