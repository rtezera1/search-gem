# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'movie/search/version'

Gem::Specification.new do |spec|
  spec.name          = "movie-search"
  spec.version       = Movie::Search::VERSION
  spec.authors       = ["Robel"]
  spec.email         = ["robeltadesse01@gmail.com"]

  spec.summary       = %q{Searches movies using the OMDapi. It's also a CLI that organizes movies based on when they're published}
  spec.description   = %q{Searches movies using the OMDapi. It's also a CLI that organizes movies based on when they're published}
  spec.homepage      = "https://rubygems.org"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

 

  spec.add_dependency 'httparty'
  spec.add_dependency 'json'
  spec.add_dependency 'simple-spreadsheet'
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "dotenv"
  spec.add_development_dependency "coveralls"
end
