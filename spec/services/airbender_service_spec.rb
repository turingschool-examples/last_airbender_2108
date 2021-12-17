require 'rails_helper'
# ber spec/services/airbender_service_spec.rb
RSpec.describe 'Last Airbender API' do
  it 'gets members' do
    response = AirebenderService.nation_data('/nation')
# https://last-airbender-api.herokuapp.com/api/v1/characters?affiliation=fire+nation
    expect(response).to be_a(Hash)

    expect(response[:data]).to be_an(Array)

    # response[:data].each do |park|
    #   expect(park[:id]).to be_a String
    #   expect(park[:fullName]).to be_a String
    #   expect(park[:description]).to be_a String
    #   expect(park[:directionsInfo]).to be_a String
    #   expect(park[:states]).to be_a String
    # end
  end
end
