## Portfolio React on Rails

# Steps

Generating a new [Rails 5.0.2](http://guides.rubyonrails.org/v5.0/) project

  `$ rails new portfolio_react_rails`

Adding gems

  ```rb
  gem "react_on_rails", "~> 7" # https://github.com/shakacode/react_on_rails
  gem 'devise'
  gem 'pg'
  ```

Installing dependencies
  
  `$ bundle install`

Installing gems that need runs command

  ```bash
  $ rails g react_on_rails:install --redux # In this case I've configured react with redux included
  $ rails g devise:install
  ```

Creating our DB(PostgreSQL) models

  ```
  $ rails g devise User
  $ rails g Project name description link user:references
  $ rails g Skill name stars:integer user:references
  ```

Install all dependencies & runs migrations

  `$ bundle install & npm install`
  `$ gem install foreman`
  `$ rake db:migrate`

Verify that everything goes well

  `$ foreman start -f Procfile.dev`

When servers up we open

  [localhost:3000/hello_world](http://localhost:3000/hello_world)

Git control versioning
  
  ```bash
  $ git init
  $ git add .
  $ git commit -m "message"
  $ git remote add origin # here you must add your new repository
  $ git push -u origin master
  ```
