# README

Project is a simple project tracking tool that allows you to keep track of tasks by milestone, and the resources assigned to them.

## Ruby version:
I will be trying to keep Project up to date with the latest ruby and rails versions. Right now Project is developed on Ruby 2.5.3

## Environment requirements:
Right now, Project will run on OS-X Mojave for sure, and will soon be updated to run on heroku. Other environments should work, but have not been verified.

## Installation:
* Download this repo into you target directory.
* If you are using a ruby version manager  (such as rbenv) set your ruby version to the one listed above.
* If you use gemsets (such as rbenv gemsets) create a new gemset if you wish.
* If you do not already have bundler installed in your ruby environment, install it now with `gem install bundler`
* Run bundler to install the dependancies `bundle install`

Project is now ready for creating a database

## Database creation:
Run the database creation rake task
** `rake db:create`
Note that currently I am developing Project with just an sqlite3 database file. If you wish to use something more heavy weight you will need to add your database gem to the Gemfile and re-run bundler. You will also need to make sure your database service is up and available. Lastly, you will need to configure your config/database.yml file to use your database service. An example of how to do this can be found at https://www.digitalocean.com/community/tutorials/how-to-setup-ruby-on-rails-with-postgres

## Database initialization:
There is no seed data for project yet, so only the migration files need to be run
** `rake db:migrate`

## Running:
There are no additional services needed for Project, so only the rails server needs to be started.
** run locally with `rails s -p 5000`

Project is not ready for production yet.
