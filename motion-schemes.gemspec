require File.expand_path('../lib/motion/project/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors = ["Francis Chong"]
  gem.email = ["francis@ignition.hk"]
  gem.description = "Expand RubyMotion build system to support building multiple apps from one project."
  gem.summary = "Expand RubyMotion build system to support building multiple apps from one project."
  gem.homepage = "https://github.com/siuying/motion-schemes"

  gem.files = `git ls-files`.split($\)
  gem.test_files = gem.files.grep(%r{^(test|spec|lib_spec|features)/})
  gem.name = "motion-schemes"
  gem.require_paths = ["lib"]
  gem.version = Motion::Project::Schemes::VERSION

  gem.add_development_dependency 'rake'
end