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

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


dgs-MacBook-Pro:rail263 dg$ scaffold

Looking for schema.rb in /dg2/share4/rail263
0. /dg2/share4/rail263/db/schema.rb

Select a path to the target schema: 0

Loaded tables:
0. customers
1. pasenger_lists
2. passengers
3. rental_records
4. roles
5. users
6. vehicles

Options are:
4 for table 4; (4..6) for table 4 to 6; [4,6] for tables 4 and 6; * for all Tables

Select a table: *

Script for scaffold:

rails generate scaffold Customer name:string address:string phone:string discount:float --no-migration

rails generate scaffold PasengerList clocknum:string name:string active:boolean --no-migration

rails generate scaffold Passenger name:string description:string output:text rental_record:references pasenger_list:references --no-migration

rails generate scaffold RentalRecord customer:references vehicle:references start_date:date end_date:date lastUpdated:datetime --no-migration

rails generate scaffold Role name:string description:string --no-migration

rails generate scaffold User name:string email:string crypted_password:string salt:string role:references encrypted_password:string reset_password_token:string \
reset_password_sent_at:datetime remember_created_at:datetime sign_in_count:integer current_sign_in_at:datetime last_sign_in_at:datetime current_sign_in_ip:string \
last_sign_in_ip:string --no-migration

rails generate scaffold Vehicle veh_reg_no:string category:string name:string desc:string photo:binary daily_rate:decimal --no-migration



~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

dgs-MacBook-Pro:rail263 dg$

grep -r rail2 . |grep -v deploy|grep -v tmp |grep -v .git|grep -v /log |grep -v /offlin|grep -v readme-26

./.erdconfig:title: rail253y
./app/views/layouts/application.html.haml:          %title rail253y
./app/views/layouts/application.html.haml:            rail253y
./app/views/layouts/application.html.haml:          = link_to 'rail253y', root_path, class: 'navbar-brand'
./config/initializers/session_store.rb:Rails.application.config.session_store :cookie_store, key: '_rail253y_session'
./README.md:# rail260

dgs-MacBook-Pro:rail263 dg$

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

_____________

_____________

_____________

_____________

_____________





