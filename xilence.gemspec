# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'xilence/version'

Gem::Specification.new do |gem|
  gem.name          = "xilence"
  gem.version       = Xilence::VERSION
  gem.authors       = ["Ivan Nemytchenko", "Maxim Kaschenko"]
  gem.email         = ["nemytchenko@gmail.com"]
  gem.description   = "Rails backtrace silencer for ajax requests"
  gem.summary       = "dummy summary"
  gem.homepage      = "http://inem.github.com/xilence.html"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency('rails', '~> 3.2.0')
end
