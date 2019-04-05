# frozen_string_literal: true

require 'rubocop/rake_task'
require 'rake/testtask'
Dir.glob('lib/tasks/*.rake').each { |r| import r }

RuboCop::RakeTask.new

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.warning = false
end

task default: %i[test rubocop]
