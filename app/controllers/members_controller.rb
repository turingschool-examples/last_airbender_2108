class MembersController < ApplicationController

  def index
    conn = Faraday.new('last-airbender-api.herokuapp.com')
    response = conn.get('/api/v1/characters')
  end


end
