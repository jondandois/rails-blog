source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# gem 'capistrano-rails', group: :development # Use Capistrano for deployment
# gem 'redis', '~> 3.0' # Use Redis adapter to run Action Cable in production
gem 'bcrypt', '~> 3.1.7'# Use ActiveModel has_secure_password
gem 'bootstrap-sass'
gem 'coffee-rails', '~> 4.2' # Use CoffeeScript for .coffee assets and views
gem 'jquery-rails' # Use jquery as the JavaScript library
gem 'omniauth-twitter'
gem 'pg' # Use PostgreSQL as the database for Active Record
gem 'puma', '~> 3.7' # Use Puma as the app server
gem 'rails', '~> 5.1.2' # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'sass-rails', '~> 5.0' # Use SCSS for stylesheets
gem 'uglifier', '>= 1.3.0' # Use Uglifier as compressor for JavaScript assets

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw] # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'capybara', '~> 2.13' # Adds support for Capybara system testing and selenium driver
  gem 'selenium-webdriver'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2' # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0' # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
