# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "formtastic_datepicker_inputs/version"

Gem::Specification.new do |s|
  s.name        = "formtastic_datepicker_inputs"
  s.version     = FormtasticDatepickerInputs::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Grzegorz Brzezinka", "Nik Petersen", "Alan Harper", "Konstantin Shabanov"]
  s.email       = ["etehtsea@gmail.com"]
  s.homepage    = "http://github.com/etehtsea/formtastic_datepicker_inputs"
  s.summary     = %q{formtastic support for jQuery UI's date picker inputs}
  s.description = %q{Use jQuery UI's date picker with formtastic easily}
  s.licenses    = ["MIT"]

  s.extra_rdoc_files = [ "MIT-LICENSE", "README.md"]
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency(%q<activesupport>, ["~> 3.0"])
  s.add_dependency(%q<actionpack>,    ["~> 3.0"])
  s.add_dependency(%q<i18n>,          [">= 0.4.0"])

  s.add_development_dependency(%q<rails>,              ["~> 3.0"])
  s.add_development_dependency(%q<rspec-rails>,        ["~> 2.5"])
  s.add_development_dependency(%q<rspec_tag_matchers>, [">= 1.0.0"])
  s.add_development_dependency(%q<hpricot>,            ["~> 0.8.3"])
end
