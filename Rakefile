require "bundler/gem_tasks"
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new :specs do |task|
  task.pattern = Dir['spec/**/*_spec.rb']
end

task :default => ['specs']

namespace :db do
  require_relative 'db/schema'
  require_relative 'db/seed'

  task :init do
    Tickets::Database.init
  end

  task :seed do
    Tickets::Database.seed
  end
end
