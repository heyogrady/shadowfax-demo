source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.6.0"

gem "rails", "6.0.0.beta1"

# Friends of Rails
gem "jquery-rails" # jQuery
gem "sass-rails", ">= 5.0.3" # SASS support
gem "sprockets-rails" # asset pipeline
gem "uglifier", ">= 2.7.1"
gem "webpacker", ">= 4.0.0.rc.3"

# Database
gem "pg", ">= 0.18", "< 2.0" # PostgreSQL
gem "pgcli-rails"

gem "administrate" # admin dashboards
gem "administrate-field-password"
gem "analytics-ruby", "~> 2.0.0", require: "segment/analytics" # segment.io
gem "autoprefixer-rails" # for CSS vendor prefixes
gem "bootsnap", ">= 1.2.0", require: false
gem "browser" # For variants support
gem "carrierwave" # for handling file uploads
gem "devise", ">= 4.2.0" # authentication
gem "email_prefixer" # adds prefix to subject in emails
gem "email_validator" # validates email addresses
gem "fog-aws", require: false # for handling s3
gem "foreman", git: "https://github.com/bitaculous/foreman", branch: "update-thor-dependency" # run server and worker
gem "github_changelog_generator", git: "https://github.com/skywinder/github-changelog-generator"
gem "inky-rb", require: "inky" # for email templates
gem "jbuilder", ">= 2.5" # for building JSON
gem "json", git: "https://github.com/flori/json", branch: "v1.8"
gem "kaminari" # pagination
gem "mailgun-ruby", require: "mailgun" # sending and tracking emails
gem "marginalia", git: "https://github.com/basecamp/marginalia" # query comments
gem "mini_racer", platforms: :ruby
gem "premailer-rails" # Stylesheet inlining for email
gem "puma" # server
gem "rack-protection", git: "https://github.com/sinatra/sinatra" # DJ dependency
gem "redis-namespace"
gem "rollbar" # error tracking
gem "secure_headers", "~> 3.0" # harden headers for security
gem "semantic-ui-sass", git: "https://github.com/heyogrady/semantic-ui-sass", branch: "fix-autocomplete-off" # Semantic UI framework
gem "sidekiq" # background processing
gem "simple_form" # forms made easy for Rails
gem "sinatra"
gem "turbolinks", "~> 5"
gem "twilio-ruby" # phone and SMS services

group :development do
  gem "annotate" # auto generate schema documentation
  gem "better_errors" # better rails error messages
  gem "binding_of_caller" # interactive console in browser on errors
  gem "brakeman", require: false # security vulnerability scanner
  gem "bullet", git: "https://github.com/duduribeiro/bullet", branch: "wip_rails6_alpha" # notify of db queries that can be improved
  gem "bundler-audit", require: false # check gems for patches
  gem "dotenv-rails", git: "https://github.com/y-yagi/dotenv", branch: "support-rails-60" # for loading environment variables
  gem "guard" # automate command line
  gem "guard-livereload", require: false # changed files = autoreloaded browser
  gem "guard-minitest" # automatically run tests
  gem "guard-rubocop" # use rubocop with guard
  gem "letter_opener" # show sent emails in the browser
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "overcommit", require: false # git hooks
  gem "rack-livereload"
  gem "rubocop", require: false # evaluate against style guide
  gem "ruby_audit", require: false # vulnerabity checker for Ruby itself
  gem "scss_lint", require: false # lint SCSS
  gem "shog" # colored log output
  gem "spring" # speeds up development by keeping app running in the background
  gem "spring-watcher-listen"
  gem "terminal-notifier", require: false # send notifications to macOS
  gem "terminal-notifier-guard", require: false # terminal-notifier + Guard
  gem "web-console", "~> 3.0" # for debugging via in-browser IRB consoles
end

group :test do
  gem "capybara" # integration testing
  gem "chromedriver-helper" # helps connected capybara, selenium and chrome
  gem "codeclimate-test-reporter", require: nil # CodeClimate test coverage
  gem "connection_pool"
  gem "factory_bot_rails" # for setting up ruby objects as test data
  gem "launchy"
  gem "minitest-capybara"
  gem "minitest-ci", git: "https://github.com/circleci/minitest-ci"
  gem "minitest-reporters", require: false # custom MiniTest output formats
  gem "mocha", require: false # mocking and stubbing library
  gem "poltergeist" # headless browser for integration testing
  gem "selenium-webdriver" # for system testing
  gem "shoulda-context" # ActiveRecord test shortcuts
  gem "shoulda-matchers", ">= 3.0.1" # ActiveRecord test shortcuts
  gem "simplecov", require: false # for test coverage report
  gem "vcr" # record and reuse external HTTP requests to speed up testing
  gem "webmock" # goes with VCR
end

group :development, :test do
  gem "awesome_print" # pretty print Ruby objects with style
  gem "byebug" # for interactively debugging behavior
  gem "informed", "~> 1.0"
  gem "jazz_fingers", ">= 3.0.2" # pry-based enhancements
  gem "knapsack" # For splitting tests
  gem "pry-rails" # for interactively exploring objects
  gem "rails-erd" # for visualizing the schema
end

group :staging, :production do
  gem "rack-timeout", "0.4.2" # raise error if Puma doesn't respond in given time
  gem "rails_12factor" # better logging
  gem "rails_stdout_logging"
end

group :staging do
  gem "mail_interceptor" # intercepts outgoing mail in non-production environments
end

