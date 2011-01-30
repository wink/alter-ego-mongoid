require 'test/unit'
require 'rubygems'
gem 'mongoid'
gem 'bson_ext'
require 'mongoid'
gem 'alter-ego'
require 'alter_ego'
require 'alter_ego/mongoid_adapter'
require 'traffic_signal'

Mongoid.configure do |config|
  name = "alter-ego-mongoid-test"
  host = "localhost"
  config.master = Mongo::Connection.new.db(name)
  config.persist_in_safe_mode = false
end