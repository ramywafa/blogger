$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "blogger/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "blogger"
  s.version     = Blogger::VERSION
  s.authors     = ["ramy wafa"]
  s.email       = ["ramy.wafa@affectiva.com"]
  s.homepage    = "https://github.com/ramywafa/blogger"
  s.summary     = "Summary of Blogger."
  s.description = "Description of Blogger."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.4"

  s.add_development_dependency "mysql2"

  s.add_development_dependency "rspec-rails"

  s.add_development_dependency "factory_girl_rails"
end
