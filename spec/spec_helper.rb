require 'pry'
require 'simplecov'
require 'coveralls'

SimpleCov.start
SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
# Coveralls.wear!

require 'rubygems'
require 'rspec'
require 'webmock/rspec'
WebMock.disable_net_connect!(:allow => 'coverwalls.io', :allow_localhost => true)

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

def fixture_path
  File.expand_path('../fixtures', __FILE__)
end

def fixture(file)
  File.new(fixture_path + '/' + file)
end
