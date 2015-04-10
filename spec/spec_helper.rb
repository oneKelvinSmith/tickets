require 'rack/test'
require 'rspec'


ENV['RACK_ENV'] = 'test'

require_relative File.join('..', 'lib/tickets.rb')

RSpec.configure do |config|
  include Rack::Test::Methods

  def app
    Tickets::App
  end

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
end
