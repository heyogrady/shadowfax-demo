require "simplecov"

if ENV["CIRCLE_ARTIFACTS"]
  dir = File.join(ENV["CIRCLE_ARTIFACTS"], "coverage")
  SimpleCov.coverage_dir(dir)
end

SimpleCov.start("rails") do
  add_filter("/app/admin/")
  add_filter("/app/channels/")
  add_filter("/app/inputs/")
  add_filter("/app/uploaders/")
  add_filter("/bin/")
  add_filter("/config/")
  add_filter("/lib/mailer_previews/")
  add_filter("/lib/tasks/auto_annotate_models.rake")
  add_filter("/lib/tasks/coverage.rake")
  add_filter("/test/")

  add_group("Models", "app/models")
  add_group("Controllers", "app/controllers")
  add_group("Services", "app/services")
  add_group("Helpers", "app/helpers")
  add_group("Mailers", "app/mailers")
  add_group("Workers", "app/workers")
  add_group("Jobs", "app/jobs")
  add_group("Carriers", "app/carriers")
  add_group("Uploaders", "app/uploaders")
  add_group("Facades", "app/facades")
end

SimpleCov.minimum_coverage(80)
SimpleCov.use_merging(false)

ENV["RAILS_ENV"] ||= "test"
require File.expand_path("../../../config/environment", __FILE__)
require "rails/test_help"

class ActiveSupport::TestCase

  ActiveRecord::Migration.check_pending!

  # Setup all fixtures in test/fixtures/*.yml for all tests in alpha order.
  fixtures :all

  include FactoryGirl::Syntax::Methods

end
