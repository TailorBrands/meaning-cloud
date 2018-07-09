# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)

require 'semver'

Gem::Specification.new do |s|
  s.name        = 'meaning-cloud'
  s.version     = SemVer.find.format '%M.%m.%p'
  s.platform    = Gem::Platform::RUBY
  s.date        = Date.today.to_s
  s.summary     = "An API wrapper for Meaning Cloud API's"
  s.description = "A Gem to expose a wrapping API for the Meaning Cloud API's"
  s.authors     = ['Nadav Shatz']
  s.email       = 'nadav@tailorbrands.com'
  s.homepage    = 'https://github.com/TailorBrands/meaning-cloud'
  s.license     = 'MIT'

  s.files        = Dir[
    'README.md', 'LICENSE', 'Rakefile', 'lib/**/*'
  ]
  s.test_files   = Dir['spec/**/*']

  s.add_runtime_dependency 'rest-client', '~> 2'

  s.add_development_dependency 'rake', '~> 0'
  s.add_development_dependency 'rspec', '~> 3.1', '>= 3.1.0'
  s.add_development_dependency 'faker', '~> 0'
  s.add_development_dependency 'semver', '~> 0'
end
