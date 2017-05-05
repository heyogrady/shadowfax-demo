set :branch, ENV.fetch("CAPISTRANO_BRANCH", "staging")
set :mb_sidekiq_concurrency, 1

server "shadowfax-demo-staging.herokuapp.com",
       user: "deployer",
       roles: %w(app backup cron db redis sidekiq web)
