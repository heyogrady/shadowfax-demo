# shadowfax-demo

[![CircleCI](https://circleci.com/gh/heyogrady/shadowfax-demo/tree/master.svg?style=svg)](https://circleci.com/gh/heyogrady/shadowfax-demo/tree/master)
[![Maintainability](https://api.codeclimate.com/v1/badges/bc8b0a86fbc2a4dd2f09/maintainability)](https://codeclimate.com/github/heyogrady/shadowfax-demo/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/bc8b0a86fbc2a4dd2f09/test_coverage)](https://codeclimate.com/github/heyogrady/shadowfax-demo/test_coverage)

This is a Rails 5 app.

## Documentation

This README describes the purpose of this repository and how to set up a development environment. Other sources of documentation are as follows:

* UI and API designs are in `doc/`

## Prerequisites

This project requires:

* Ruby 2.5.1, preferably managed using [rbenv][]
* PostgreSQL must be installed and accepting connections

## Getting started

### bin/setup

Run the `bin/setup` script. This script will:

* Check you have the required Ruby version
* Install gems using Bundler
* Create local copies of `.env` and `database.yml`
* Create, migrate, and seed the database

### Run it!

1. Run `rake test` to make sure everything works.
2. Run `bin/server` to start the Rails app.
3. In a separate console, run `bundle exec sidekiq` to start the Sidekiq background job processor.

### Sign In
* Username: `sam@example.com`
* Password: `welcome`
