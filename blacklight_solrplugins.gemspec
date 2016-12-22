$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "blacklight_solrplugins/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "blacklight_solrplugins"
  s.version     = BlacklightSolrplugins::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Jeff Chiu", "Steven Ng"]
  s.email       = ["jeffchiu@upenn.edu", "steven.ng@temple.edu"]
  s.homepage    = "https://github.com/tulibraries/blacklight_solrplugins"
  s.summary     = "Blacklight extension for solrplugins"
  s.description = "Blacklight extension for solrplugins"
  s.license     = "Apache 2.0"

  s.files = Dir["{app,config,db,lib,spec}/**/*", "LICENSE", "Rakefile", "README.rdoc"]
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]

  s.add_dependency "rails", "~> 5.0.0"
  s.add_dependency "blacklight", "~> 6.0"

  s.add_development_dependency "rspec-rails", "~> 3.5"
  s.add_development_dependency "rspec-activemodel-mocks"
  s.add_development_dependency "capybara"
  s.add_development_dependency "engine_cart", "1.0.1"
end
