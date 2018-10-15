require "simplecov"

if ENV["CIRCLE_ARTIFACTS"]
  dir = File.join(ENV["CIRCLE_ARTIFACTS"], "coverage")
  SimpleCov.coverage_dir(dir)
end

SimpleCov.start do
  add_filter("/app/admin/")
  add_filter("/app/channels/")
  add_filter("/app/controllers/admin/")
  add_filter("/app/dashboards/")
  add_filter("/app/inputs/")
  add_filter("/app/uploaders/")
  add_filter("/bin/")
  add_filter("/lib/")

  add_filter "/test/"
  add_filter "/config/"

  add_group "Models", "app/models"
  add_group "Controllers", "app/controllers"
  add_group "Helpers", "app/helpers"
  add_group "Mailers", "app/mailers"
  add_group "Workers", "app/workers"
  add_group "Jobs", "app/jobs"

  add_group("Services", "app/services")
  add_group("Carriers", "app/carriers")
  add_group("Uploaders", "app/uploaders")
  add_group("Facades", "app/facades")
end

SimpleCov.minimum_coverage(95)

ENV["RAILS_ENV"] ||= "test"
require File.expand_path("../../config/environment", __dir__)
require "rails/test_help"
require "knapsack"
require "rake/testtask"
require "webmock/minitest"
require "minitest/autorun"

if ENV["CI"]
  Minitest::Ci.report_dir = "reports"
  knapsack_adapter = Knapsack::Adapters::MinitestAdapter.bind
  knapsack_adapter.set_test_helper_path(__FILE__)
end

class ActiveSupport::TestCase

  ActiveRecord::Migration.check_pending!

  # Setup all fixtures in test/fixtures/*.yml for all tests in alpha order.
  fixtures :all

  include FactoryBot::Syntax::Methods

end
