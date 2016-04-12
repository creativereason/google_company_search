# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'google_company_search/version'

Gem::Specification.new do |spec|
  spec.name          = "google_company_search"
  spec.version       = GoogleCompanySearch::VERSION
  spec.authors       = ["Brian Schwartz"]
  spec.email         = ["bschwartz@creativereason.com"]
  spec.summary       = %q{A google scrape tool to provide a URL by searching for a company name}
  spec.description   = %q{Includes a blacklist of URLs to filter out business news sites, aggregators (like Manta, Bloomberg, Hoover's) social sites(facebook, twitter, linked)}
  spec.homepage      = "https://github.com/creativereason/google_company_search"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "mechanize"
end
