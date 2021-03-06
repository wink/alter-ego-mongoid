# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{alter-ego-mongoid}
  s.version = "0.1.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Micah Winkelspecht"]
  s.date = %q{2011-01-30}
  s.description = %q{Adapter to allow Mongoid to persist and restore state of objects using the AlterEgo state machine, ported from the alter-ego-activerecord gem by Paul Hieromnimon}
  s.email = %q{winkelspecht@gmail.com}
  s.extra_rdoc_files = ["README.rdoc", "lib/alter_ego/mongoid_adapter.rb"]
  s.files = ["Manifest", "README.rdoc", "Rakefile", "init.rb", "lib/alter_ego/mongoid_adapter.rb", "test/adapter_test.rb", "test/helper.rb", "test/traffic_signal.rb", "alter-ego-mongoid.gemspec"]
  s.homepage = %q{http://github.com/wink/alter-ego-mongoid}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Alter-ego-mongoid", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{alter-ego-mongoid}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Adapter to allow Mongoid to persist and restore state of objects using the AlterEgo state machine, ported from the alter-ego-activerecord gem by Paul Hieromnimon}
  s.test_files = ["test/adapter_test.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mongoid>, [">= 2.0.0.rc.6"])
      s.add_runtime_dependency(%q<bson_ext>, ["~> 1.2"])
      s.add_runtime_dependency(%q<alter-ego>, [">= 1.0.1"])
    else
      s.add_dependency(%q<mongoid>, [">= 2.0.0.rc.6"])
      s.add_dependency(%q<bson_ext>, ["~> 1.2"])
      s.add_dependency(%q<alter-ego>, [">= 1.0.1"])
    end
  else
    s.add_dependency(%q<mongoid>, [">= 2.0.0.rc.6"])
    s.add_dependency(%q<bson_ext>, ["~> 1.2"])
    s.add_dependency(%q<alter-ego>, [">= 1.0.1"])
  end
end
