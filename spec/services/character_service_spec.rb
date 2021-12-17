require 'rails_helper'

RSpec.describe 'character service' do
  it 'gets data', :vcr do
    endpoint = "/api/v1/characters"
    data = CharacterService.get_data(endpoint)

    expect(data).to be_an Array
  end

  it 'gathers fire nation data', :vcr do
    response = CharacterService.fire_nation
    character = response[0]

    expect(response).to be_an Array
    expect(character[:name]).to be_a String
    expect(character[:allies]).to be_an Array
    expect(character[:enemies]).to be_an Array
    expect(character[:affiliation]).to be_a String
  end
end
