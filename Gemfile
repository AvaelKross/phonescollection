source 'https://rubygems.org'

# ==== Core ====

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.4'

# ==== DB =====

# Use pg as the database for Active Record
gem 'pg'
# Store db structure in model's file
gem 'annotate', ">=2.6.0"

# ==== Frontend ====

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Templates
gem 'slim-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby
# Build forms with ease!
gem 'simple_form', '~>3.1.0.rc1'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# ==== Auth =====

# Users
gem 'devise'
# Access management
gem 'cancancan'

# ==== Other =====

# Saving pics
gem "paperclip", "~> 4.1"

group :production do
  # Server
  gem 'puma'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # Deployment
  gem 'mina'
  # Tasks for mina
  gem 'mina-puma', :require => false
  # Tests
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'factory_girl_rails'
  gem 'database_cleaner'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

