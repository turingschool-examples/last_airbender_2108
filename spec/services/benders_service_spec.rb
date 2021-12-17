require 'rails_helper'

RSpec.describe "Last Airbender API Service" do
  describe "happy path" do
    it 'can get member information' do
      params = {affiliation: "Fire Nation"}
      response = BendersService.call_api("/api/v1/characters?", params)

      expect(response).to be_an Array
      expect(response[0]).to be_a Hash
      expect(response[0]).to have_key(:name)
      expect(response[0]).to have_key(:affiliation)
      expect(response[0]).to have_key(:allies)
      expect(response[0]).to have_key(:enemies)

    end
  end
end

# https://last-airbender-api.herokuapp.com/api/v1/characters?affiliation=Fire+Nation
