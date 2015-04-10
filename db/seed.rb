require 'sequel'

module Tickets
  module Database
    def Database.seed
      sessions = DB[:sessions]

      sessions.insert(:name => 'Session 1')
      sessions.insert(:name => 'Session 2')
      sessions.insert(:name => 'Session 3')
      sessions.insert(:name => 'Session 4')
      sessions.insert(:name => 'Session 5')
    end
  end
end
