# -*- encoding: utf-8 -*-
# stub: guard-rspec 2.5.0 ruby lib

Gem::Specification.new do |s|
  s.name = "guard-rspec".freeze
  s.version = "2.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Thibaud Guillaume-Gentil".freeze]
  s.date = "2013-03-04"
  s.description = "Guard::RSpec automatically run your specs (much like autotest).".freeze
  s.email = ["thibaud@thibaud.me".freeze]
  s.homepage = "http://rubygems.org/gems/guard-rspec".freeze
  s.rubyforge_project = "guard-rspec".freeze
  s.rubygems_version = "2.6.11".freeze
  s.summary = "Guard gem for RSpec".freeze

  s.installed_by_version = "2.6.11" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<guard>.freeze, [">= 1.1"])
      s.add_runtime_dependency(%q<rspec>.freeze, ["~> 2.11"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.1"])
    else
      s.add_dependency(%q<guard>.freeze, [">= 1.1"])
      s.add_dependency(%q<rspec>.freeze, ["~> 2.11"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.1"])
    end
  else
    s.add_dependency(%q<guard>.freeze, [">= 1.1"])
    s.add_dependency(%q<rspec>.freeze, ["~> 2.11"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.1"])
  end
end
