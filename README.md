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

#### NodeJS/NPM
NodeJS is an asynchronous event driven framework built on Chrome's JavaScript runtime for easily building fast, scalable network applications.

```
$ ... install node from nodejs.org if not already installed ...
$ npm install -g grunt-cli # the local node modules aren't in the $PATH, hence the global installation.
$ npm install
```

### Other Setup

#### Foreman and `.env`
Don't forget to copy the .env.example file to just .env and setup your development environment variables.

```
$ mv .env.example .env
```

In particular:
```
PORT=3000
DEV_EMAIL=true #set to false if you don't want email
DEV_EMAIL_NAME=username #do not include the domain name, you just need the local part/username
DEV_EMAIL_PASSWORD=yourPass1
```

### Testing
In order to confirm that the setup is working, just run `rake`. I've overwritten the default task so that it will run all linting and tests including JSHint, Rubocop, and RSpec.
```
$ rake
```

## Basic App Setup
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
