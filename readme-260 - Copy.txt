_____________
2016-07-22_Fri_14.50-PM
2016-07-22


ref:
https://github.com/plataformatec/devise
http://hibbard.eu/authentication-with-devise-and-cancancan-in-rails-4-2/

gem 'devise'

remove sorcery.rb

_____________

albe@v206c101:~/share203/rail263$ rails generate devise:install
Running via Spring preloader in process 2526
      create  config/initializers/devise.rb
      create  config/locales/devise.en.yml
===============================================================================

Some setup you must do manually if you haven't yet:

  1. Ensure you have defined default url options in your environments files. Here
     is an example of default_url_options appropriate for a development environment
     in config/environments/development.rb:

       config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }

     In production, :host should be set to the actual host of your application.

  2. Ensure you have defined root_url to *something* in your config/routes.rb.
     For example:

       root to: "home#index"

  3. Ensure you have flash messages in app/views/layouts/application.html.erb.
     For example:

       <p class="notice"><%= notice %></p>
       <p class="alert"><%= alert %></p>

  4. You can copy Devise views (for customization) to your app by running:

       rails g devise:views

===============================================================================
albe@v206c101:~/share203/rail263$ 



_____________

following instructions on https://github.com/plataformatec/devise


_____________

albe@v206c101:~/share203/rail263$ rails generate devise User
Running via Spring preloader in process 2664
      invoke  active_record
      create    db/migrate/20160722190232_add_devise_to_users.rb
      insert    app/models/user.rb
       route  devise_for :users
a
lbe@v206c101:~/share203/rail263$ rake db:migrate
rake aborted!
NoMethodError: undefined method `authenticates_with_sorcery!' for User (call 'User.connection' to establish a connection):Class
/home/albe/share203/rail263/app/models/user.rb:7:in `<class:User>'

albe@v206c101:~/share203/rail263$ rake db:migrate
== 20160722190232 AddDeviseToUsers: migrating =================================
-- change_table(:users)
rake aborted!
StandardError: An error has occurred, this and all later migrations canceled:
SQLite3::SQLException: duplicate column name: email: ALTER TABLE "users" ADD "email" varchar DEFAULT '' NOT NULL
/home/albe/share203/rail263/db/migrate/20160722190232_add_devise_to_users.rb:5:in `block in up'


_____________

edited migration C:\var\share203\rail263\db\migrate\20160722190232_add_devise_to_users.rb
to comment out email.

albe@v206c101:~/share203/rail263$ rake db:migrate
== 20160722190232 AddDeviseToUsers: migrating =================================
== 20160722190232 AddDeviseToUsers: migrated (0.0178s) ========================
albe@v206c101:~/share203/rail263$ 


_____________

rails generate devise:views
_____________


u=User.where(:email => 'a@e').first
u.password='a'
u.password_confirmation='a'
u.save!

_____________

_____________

_____________

_____________

_____________

_____________





