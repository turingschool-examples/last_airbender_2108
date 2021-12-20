require 'rails_helper'
# ber spec/services/airbender_service_spec.rb
RSpec.describe 'Last Airbender API' do
  it 'returns nation specific data' do
    response = AirbenderService.search_nation("fire+nation")
    expect(response.count).to eq(97)

    expect(response).to be_an Array
    expect(response[0]).to be_a Hash

    expect(response[0]).to have_key :_id
    expect(response[0]).to have_key :allies
    expect(response[0]).to have_key :enemies
    expect(response[0]).to have_key :name
    expect(response[0]).to have_key :affiliation
    expect(response[1]).to have_key :photoUrl
  end
end
