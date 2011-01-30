require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('alter-ego-mongoid', '0.1.3') do |p|
  p.description = "Adapter to allow Mongoid to persist and restore state of objects using the AlterEgo state machine, ported from the alter-ego-activerecord gem by Paul Hieromnimon"
  p.author = "Micah Winkelspecht"
  p.email = "winkelspecht@gmail.com"
  p.url = "http://github.com/wink/alter-ego-mongoid"
  p.runtime_dependencies = ["mongoid >=2.0.0.rc.6", "bson_ext ~>1.2", "alter-ego >=1.0.1" ]
end

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test' 
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end
