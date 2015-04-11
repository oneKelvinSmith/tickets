require 'sequel'
require 'logger'

module Tickets
  module Database
    DB = Sequel.connect('postgres://postgres:pass@localhost:5432/tickets',
                        :logger => Logger.new('log/db.log'))

    def Database.init
      DB.create_table :sessions do
        primary_key :id
        String :name
      end

      DB.create_table :order_seats do
        primary_key :id
        String :booked_seat
        foreign_key :session_id, :sessions, :unique=>true, :null=>false
        unique [:session_id, :booked_seat]
      end

      DB.create_table :orders do
        Date :create_at
        String :order_id, :primary_key => true
      end
    end
  end
end
