# ruby-getting-started

A barebones Rails app, which can easily be deployed to Heroku.

This application support the [Getting Started with Ruby on Heroku](https://devcenter.heroku.com/articles/getting-started-with-ruby) article - check it out.

## Running Locally

Make sure you have Ruby installed.  Also, install the [Heroku Toolbelt](https://toolbelt.heroku.com/).

```sh
$ git clone git@github.com:heroku/ruby-getting-started.git
$ cd ruby-getting-started
$ bundle install
$ rake db:create db:migrate
$ foreman start web
```

Your app should now be running on [localhost:5000](http://localhost:5000/).

## Deploying to Heroku

```sh
$ heroku create
$ git push heroku master
$ heroku run rake db:migrate
$ heroku open
```

## Documentation

For more information about using Ruby on Heroku, see these Dev Center articles:

- [Ruby on Heroku](https://devcenter.heroku.com/categories/ruby)

# tspoon

## Steps I followed
-  Setting up the environment

-- Created a Heroku account
-- Installed Heroku toolbelt
-- Installed Postgres. 
	Added to $PATH
```sh
	export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin
	export PATH=$PATH:/Applications/Postgres93.app/Contents/MacOS/bin
```
- Ran Bundle Install
-- Had to change version of RVM. Using: rvm use ruby-1.9.3-p125
-- Had to create symlink to GCC: sudo ln -s /usr/bin/gcc /usr/bin/gcc-4.2
-- Ran into an issue with gem install pg
		--- sudo old libz files
		--- Install new version of libz
		--- ./configure, make and sudo make install

- Set up the database
-- Rake files to create the tables
-- Seed the lookup tables (since there is no Enum type supported by Active Record in migrations for postgres

-  Build the app
-- Define the routes
-- Write the controllers, models
-- Create the HTML pages
-- Create the JavaScript pages
-- Make it shiny (add the CSS)

- Test the app on Chrome
 
- Deploy to Heroku
-- Run migrate first
-- Assets didn’t load. Had to change setting of Rails env to serve static assets 

##TO DO
- Form Error Handling
- Date time picker. Set to string type in database right now. Needs to be fixed
- Tests
- Make admin page pretty
- Add image selection for reservation type (meal only, meal and class,...)
