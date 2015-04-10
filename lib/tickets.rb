require "tickets/version"
require 'sinatra/base'

module Tickets
  class App < Sinatra::Base
    get '/' do
      'Hello!'
    end
  end
end
