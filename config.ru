require 'rubygems'
require 'bundler'

Bundler.require

require File.dirname(__FILE__) + '/lib/tickets'

run Tickets::App
