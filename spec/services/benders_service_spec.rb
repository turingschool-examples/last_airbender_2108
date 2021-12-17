require 'rails_helper'

RSpec.describe "Last Airbender API Service" do
  describe "happy path" do
    it 'can get member information' do
      params = {affiliation: "Fire+Nation"}
      response = BendersService.call_api("/api/v1/characters?", params)
require "pry"; binding.pry
      expect(response).to be_a Hash
      expect(response[:data][0][:fullName]).to eq("Birmingham Civil Rights National Monument")
      expect(response[:data][0][:description]).to include("images of snarling police dogs")
      expect(response[:data][0][:directionsInfo]).to include("Via I-65 North or South From I-65")
      expect(response[:data][0][:operatingHours][0][:standardHours]).to be_a Hash
    end
  end
end

# https://last-airbender-api.herokuapp.com/api/v1/characters?affiliation=Fire+Nation
