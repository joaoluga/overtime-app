source 'https://rubygems.org'

gem 'rails', '~> 5.1.3'
gem 'pg'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'

gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.5'
gem 'sdoc', '~> 0.4.0', group: :doc

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails', '~> 3.0'
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
  gem 'database_cleaner'
  gem 'factory_girl_rails', '~> 4.7'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'spring'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'devise', '~> 4.2'

#I was having this issue: https://github.com/codahale/bcrypt-ruby/issues/142
# So i had to uninstall bcrypt then install manually (gem install bcrypt --platform=ruby). Also add this line here
gem 'bcrypt','~> 3.1.11', platforms: :ruby
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.6'