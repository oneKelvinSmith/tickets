require "tickets/version"
require 'sinatra/base'
require 'sequel'


module Tickets
  class App < Sinatra::Base
    DB = Sequel.connect('postgres://postgres:pass@localhost:5432/tickets')

    get '/sessions/:session_id' do
      sessions = DB[:sessions]
      session_id = params[:session_id].to_i
      session = sessions[:id => session_id]
      session[:name]
    end
  end
end
