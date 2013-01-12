source 'http://rubygems.org'

gem 'rails', '3.1.10'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'

# Use Twitter Bootstrap
# https://github.com/thomas-mcdonald/bootstrap-sass
gem 'bootstrap-sass', '1.4.0'

gem 'execjs'
gem 'therubyracer'

# Fixing devise at 1.5.0, as 1.5.1 had errors. 
# Wait a while before upgrading, and test test test when doing so!!
# UPDATE: Dec. 7, 2011 -- Looks like 1.5.2 is now working...
gem 'devise', '~> 1.5.0'

# Mailchimp Devise integration
# https://github.com/jcnnghm/devise_mailchimp
# http://jcnnghm.github.com/devise_mailchimp/
# TODO: This currently depends on devise ~> 1.4.8 but we need to use 1.5.0
#gem 'devise_mailchimp'

gem 'formtastic'
gem 'formtastic-bootstrap'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.1.4'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
# https://github.com/codebrew/backbone-rails (yes, the repo & gem names are reversed)
#gem 'rails-backbone'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
end
