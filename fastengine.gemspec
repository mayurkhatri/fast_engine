$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "fastengine/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "fastengine"
  s.version     = Fastengine::VERSION
  s.authors     = ["mayurkhatri"]
  s.email       = ["mayurkhatri122@gmail.com"]
  s.homepage    = "https://github.com/mayurkhatri/fast_engine"
  s.summary     = "world's fasted engine at rest"
  s.description = "Foundation for great work to come"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.5"

  s.add_development_dependency "sqlite3"
end
