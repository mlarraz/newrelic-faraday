$LOAD_PATH.unshift 'lib'
require "newrelic_faraday/version"

Gem::Specification.new do |s|
  s.name = "newrelic-faraday"
  s.version = NewrelicFaraday::VERSION::STRING

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Eric Abbott", "Matt Griffin"]
  s.description = "Faraday instrumentation for Newrelic."
  s.email = ["matt@griffinonline.org"]
  s.has_rdoc = false
  s.files = %w( README.rdoc LICENSE newrelic-faraday.gemspec )
  s.files += Dir.glob("lib/**/*")
  s.homepage = "http://github.com/roguecomma/newrelic-faraday"
  s.require_paths = ["lib"]
  s.rubyforge_project = "newrelic-faraday"
  s.rubygems_version = "1.5.3"
  s.summary = "Faraday instrumentation for Newrelic."
  s.license = "MIT"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<faraday>, ["< 0.9"])
      s.add_runtime_dependency(%q<faraday>, [">= 0.6"])
      s.add_runtime_dependency(%q<newrelic_rpm>, ["~> 3.0"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.10"])
    else
      s.add_dependency(%q<faraday>, ["< 0.9"])
      s.add_dependency(%q<faraday>, [">= 0.6"])
      s.add_dependency(%q<newrelic_rpm>, ["~> 3.0"])
      s.add_dependency(%q<rdoc>, ["~> 3.10"])
    end
  else
    s.add_dependency(%q<faraday>, ["< 0.9"])
    s.add_dependency(%q<faraday>, [">= 0.6"])
    s.add_dependency(%q<newrelic_rpm>, ["~> 3.0"])
    s.add_dependency(%q<rdoc>, ["~> 3.10"])
  end
end
