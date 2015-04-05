# GolfyMcG's Template
This is a template that I continue to update for getting started on a any cool new web apps I'm looking to build.

## Tech Stack
 - Back-end
  - Ruby 2.2.1
  - Rails 4.2.0
  - Unicorn
  - PostgreSQL
  - Ubuntu (Depends on hosting provider... but probably Heroku)
 - Front-End
  - Styling: SCSS
  - JavaScript: JQuery and Underscore
  - Framework: Bourbon with Bitter and Neat

## Getting Started
This is a brief guide to getting this template started.

### Dependencies
#### Capybara Webkit/qt
```
# Max OS X
$ brew install qt

# Ubuntu
$ sudo aptitude install qt
```

#### PostgreSQL
```
# Mac OS X
$ brew install postgresql

# Ubuntu
$ sudo aptitude install postgresql
```

### Application Setup

#### Rename Application
This app was started prior to Rails 4.2 so we have to update the name of the application manually. Hopefully, I'll make this unncessary sometime in the future. You can also install the [rename](https://github.com/morshedalam/rename) gem if you wish. Start by replacing all instances of the `Template` class with the name of your app:

```
#config/application.rb:9
module [app_name]

#config/environments/production.rb:1
#config/environments/development.rb:1
#config/environments/test.rb:1
[app_name]::Application.configure do

#config/initializers/secret_token.rb:1
[app_name]::Application.config.secret_key_base = "..."

#config/initializers/session_store.rb:3
Rails.application.config.session_store :cookie_store, key: '_[app_name]_session'

#package.json
#This one is a little more manual - just give it a read.

#README.md
```

#### NodeJS/NPM
NodeJS is an asynchronous event driven framework built on Chrome's JavaScript runtime for easily building fast, scalable network applications.

```
$ ... install node from nodejs.org if not already installed ...
$ npm install -g grunt-cli # the local node modules aren't in the $PATH, hence the global installation.
$ npm install
```

#### Foreman and `.env`
Don't forget to copy the .env.example file to just .env and setup your development environment variables.

```
$ mv .env.example .env
```

You should not commit your `secret_key_base` to version control. Use `.env` and your production environment variables to store that value. Also, this has been set up to allow for easily adding a gmail address to send emails while in development.

#### Database Name
Rename the database to something unique to the app.
```yml
#config/database.yml
...
default:
  ...
  database: [app_name]_development
test:
  ...
  database: [app_name]_test
```

### Testing
In order to confirm that the setup is working, just run `rake`. I've overwritten the default task so that it will run all linting and tests including JSHint, Rubocop, and RSpec.
```
$ rake
```

## Other App Setup
These are some of the basic steps needed for most web applications.

### Authenticating Users
In order to generate a devise user model, start by running:

```
rails generate devise user
rake db:migrate
```

Optionally, you can then generate the views and controllers to allow for customization. The below will generate shared views for all models, but you can also pass in the specific model you would like to customize.
```
rails generate devise views
rails generate devise controllers
```
