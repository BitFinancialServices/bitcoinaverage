$:.push File.expand_path("../lib", __FILE__)
require 'bitcoinaverage/version'

Gem::Specification.new do |s|
  s.name        = 'bitcoinaverage'
  s.version     = BitcoinAverage::VERSION
  s.summary     = "Ruby Wrapper for the Bitcoinaverage API"
  s.description = "Ruby wrapper for the Bitcoinaverage API. Bitcoinaverage is an independent 'globally averaged bitcoin price' provider"
  s.author      = ["Toni Urcola"]
  s.email       = 'unmail.toni@gmail.com'
  s.files       = `git ls-files`.split("\n")
  s.test_files  = `git ls-files -- {test,spec}/*`.split("\n")
  s.require_paths = ["lib"]
  s.required_ruby_version = '>= 1.9.3'
  s.add_dependency 'httparty'
  s.add_dependency 'json'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'bundler'
  s.homepage    = 'http://rubygems.org/gems/bitcoinaverage'
  s.license       = 'MIT'
end
