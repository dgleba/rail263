source 'https://rubygems.org' 

#ruby '2.3.0'
gem 'rails', '4.2.6'
gem 'mysql2'
#gem 'sass-rails', '~> 5.0.3'
gem 'sass-rails', '~> 5.0', '>= 5.0.6'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'jbuilder', '~> 2.0'
gem 'bcrypt', '~> 3.1.7'

gem 'sqlite3'
gem "select2-rails"
gem 'simple_form'
gem 'turbolinks'
gem 'jquery-turbolinks'
gem 'cocoon'
gem 'signature-pad-rails'

gem 'dotenv-rails', '>= 2.0.0'
#gem 'bower-rails'
#gem 'airbrake', '~> 4.1.0'

gem 'rails-i18n', '>= 4.0.0'
gem 'haml-rails'
gem 'email_validator'
gem 'recipient_interceptor'

gem 'draper'
gem 'defer_draper'

gem 'font-awesome-rails'

# variant: twitter-bootstrap
gem 'bootstrap-sass', '~> 3.3.1'
gem 'autoprefixer-rails'
gem 'bootstrap_form'
gem 'active_link_to'

# variant: sorcery-cancancan
gem 'devise'
#gem 'sorcery'
gem 'cancancan', '~> 1.10'

# variant: ransack-kaminari
gem 'ransack'
gem 'kaminari'
gem 'bootstrap-kaminari-views'

group :prodution do
  gem 'puma'
end

group :development, :test do
#  gem 'capistrano'
#  gem 'capistrano-rbenv'
#  gem 'capistrano-bundler'
#  gem 'capistrano-rails', '~> 1.1.3'
#  gem 'capistrano-bundle_audit', require: false
#  gem 'capistrano-db-tasks', require: false
#  gem 'capistrano-rails-console'
#  gem 'airbrussh', require: false

  gem 'puma' # lets use puma instead of webrick for development
#  gem 'foreman'
  gem 'spring'
  gem 'byebug'
  gem 'pry-byebug'
  # comment out better errors and binding of caller to avoid live shell prompt on error page...
  gem 'better_errors'
  gem 'binding_of_caller'
  
  gem 'quiet_assets'
  gem 'letter_opener'
  gem 'bullet'
  gem 'database_cleaner'
  gem 'coderay'
  gem 'rspec-rails', '~> 3.4'
  gem 'factory_girl_rails', '~> 4.5'
  gem 'shoulda-matchers', '~> 3.0'
  gem 'simplecov'
  gem 'simplecov-console'
  gem 'rails-erd'
  gem 'awesome_print'
  gem 'brakeman', require: false

  gem 'capybara'
  # selenium-webdriver & chromedriver-helper used by
  # JavaScript-dependent feature specs (`js: true`):
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

gem 'marco-polo'

# <!-- https://github.com/bernat/best_in_place -->
gem 'best_in_place'
#
# https://github.com/airblade/paper_trail
# bundle exec rails generate paper_trail:install --with-changes --with-associations
gem 'paper_trail'
#
# https://github.com/collectiveidea/audited
# old call... gem "audited"
gem "audited-activerecord"
#
gem 'rails_admin'
gem "administrate", "~> 0.2.2"
#
gem 'populator'
gem 'faker'
gem 'seed_dump'
# gem 'yaml_db'
gem "yaml_db", :git => "git://github.com/dgleba/yaml_db.git"
#

