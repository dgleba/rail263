# rail263

This is a Rails 4.2.6 app.

## to delete existing example scaffolds...

in a command prompt terminal..  
cd into the project folder  

find  -name '*customer*' -delete  
find . -name "customer*" -type d -exec rm -r "{}" \;  

find  -name '*vehicle*' -delete  
find . -name "vehicle*" -type d -exec rm -r "{}" \;  


fname1='rental'  
find  -name "*$fname1*" -delete  
find . -name "$fname1*" -type d -exec rm -r "{}" \;  

fname1='project'  
find  -name "*$fname1*" -delete  
find . -name "$fname1*" -type d -exec rm -r "{}" \;  

fname1='job'  
find  -name "*$fname1*" -delete  
find . -name "$fname1*" -type d -exec rm -r "{}" \;  

fname1='pasenger'  
find  -name "*$fname1*" -delete  
find . -name "$fname1*" -type d -exec rm -r "{}" \;  

 
fname1='passenger'  
find  -name "*$fname1*" -delete  
find . -name "$fname1*" -type d -exec rm -r "{}" \;  

_____________ 

This can be done, but doesn't delete as much as the above.

rails destroy scaffold Customer  
 rails destroy scaffold RentalRecords  
 rails destroy scaffold Vehicle  
 etc...  
 
_____________ 


 
 
### git repo...

rm -rf .git  
git init  
git add -A  # Add all files and commit them  
git commit -m "Removed history and started over"  

###  Other files..
delete the databases in db/*.sqlite3  
delete rail263\config\initializers\rails_admin-263.rb

edit these files to remove unwanted items..  
ability.rb      
application.html
routes.rb        
schema.rb       
seeds.rb        
application_helper.rb


### Application name is referenced in..


grep -r rail2 . |grep -v deploy|grep -v tmp |grep -v .git|grep -v /log |grep -v /offlin|grep -v readme-26  

./.erdconfig:title: rail253y   
./app/views/layouts/application.html.haml:          %title rail253y  
./app/views/layouts/application.html.haml:            rail253y  
./app/views/layouts/application.html.haml:          = link_to 'rail253y', root_path, class: 'navbar-brand'  
./config/initializers/  session_store.rb:Rails.application.config.session_store :cookie_store, key:rail253y_session'  
./README.md:# rail260  



 
_____________




# Reference...

This project started as a fork from https://github.com/manuelvanrijn/rails-template. 


My project is:
github.com/dgleba/rails-template-dg1 -  locally I called it railt251b

I then copied it here and it is my template with example app.

## Documentation from Manuelvanrijn


## Prerequisites

This project requires:

* Ruby 2.1.4, or higher preferably managed using [rbenv][]

## Getting started
### Run it!

1. Run `rspec spec` to make sure everything works.
2. Run `forman start` to start the Rails app (and other dependent processes if present).

[rbenv]:https://github.com/sstephenson/rbenv

## Rake tasks

```
# generate an erd.pdf from your models
bin/rake erd
```

## Tests

Running `rspec spec` will run all the tests and outputs a coverage report to `coverage/index.html`

## Metrics/code style/other handy commands

```
# check your code using rubocop with the rules specified in .rubocop.yml
rubocop

# check for vulnerable versions in your Gemfile (this will also be done on deploy with capistrano)
bundle exec bundle-audit update
bundle exec bundle-audit

# check for rails security issues using brakeman
bundle exec brakeman
```


