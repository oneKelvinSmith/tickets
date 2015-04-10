require 'spec_helper'

describe 'Tickets application' do
  describe 'GET /sessions' do

    it 'can get sessions' do
      get '/sessions/1'
      expect(last_response.status).to eq(200)
      expect(last_response.body).to eq('Session 1')
    end    
  end
end
