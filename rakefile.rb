require 'rake'
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs = ["ruby/lib"]
  t.pattern = 'ruby/spec/**/*_spec.rb'
end