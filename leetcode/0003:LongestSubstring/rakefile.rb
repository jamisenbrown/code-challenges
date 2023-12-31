# Rakefile

require 'rspec/core/rake_task'

desc 'Run RSpec tests'
RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern = './problem_spec.rb'
end
