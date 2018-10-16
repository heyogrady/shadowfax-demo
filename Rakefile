# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative "config/application"

Rails.application.load_tasks

Knapsack.load_tasks if defined?(Knapsack)

require "github_changelog_generator/task"

GitHubChangelogGenerator::RakeTask.new :changelog do |config|
  config.user = "heyogrady"
  config.project = "shadowfax-demo"
  # config.since_tag = "v2.6.1"
  # config.max_issues = 400
  config.future_release = "v0.1"
  # config.base = "CHANGELOG.md"
end
