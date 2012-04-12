# -*- encoding: utf-8 -*-
require File.expand_path('../lib/ice_rocket/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Chris Oliver"]
  gem.email         = ["excid3@gmail.com"]
  gem.description   = %q{A Rubygem for the IceRocket API}
  gem.summary       = %q{A Rubygem for the IceRocket API}
  gem.homepage      = "https://github.com/excid3/ice_rocket"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "ice_rocket"
  gem.require_paths = ["lib"]
  gem.version       = IceRocket::VERSION

  gem.add_dependency 'httparty', '~> 0.8.1'
end
