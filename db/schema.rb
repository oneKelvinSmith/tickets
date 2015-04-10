require 'sequel'

module Tickets
  module Database
    DB = Sequel.connect('postgres://postgres:pass@localhost:5432/tickets')

    def Database.init
      DB.create_table :order_seats do
        primary_key :id
        String :booked_seat
        Integer :session_id
        unique [:session_id, :booked_seat]
      end

      DB.create_table :sessions do
        primary_key :id
        String :name
      end

      DB.create_table :orders do
        primary_key :id
        Date :create_at
      end
    end
  end
end
