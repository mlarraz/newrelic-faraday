# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'newrelic_faraday/version'

Gem::Specification.new do |spec|
  spec.name          = 'newrelic-faraday'
  spec.version       = NewrelicFaraday::VERSION::STRING
  spec.authors       = ['Eric Abbott', 'Matt Griffin', 'Kyle VanderBeek']
  spec.email         = ['matt@griffinonline.org']
  spec.summary       = 'Faraday instrumentation for Newrelic.'
  spec.description   = 'Faraday instrumentation for Newrelic.'
  spec.homepage      = 'http://github.com/roguecomma/newrelic-faraday'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(/^bin\//) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(/^(test|spec|features)\//)
  spec.require_paths = ['lib']

  spec.add_dependency 'faraday',      '>= 0.6', '< 0.10'
  spec.add_dependency 'newrelic_rpm', '~> 3.0'

  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '~> 3.1'
end
