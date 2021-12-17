require 'rails_helper'

RSpec.describe 'Character' do
  it 'can get characters affiliated with a specific team', :vcr do
    response = TlaService.affiliated_characters("fire_nation")
    
    expect(response).to be_an Array
    expect(response.count).to eq(97)
    expect(response[1]).to be_a Hash

    first_character_data = response[1]

    expect(first_character_data).to have_key :name
    expect(first_character_data[:name]).to be_a String

    expect(first_character_data).to have_key :photoUrl
    expect(first_character_data[:photoUrl]).to be_a String

    expect(first_character_data).to have_key :allies
    expect(first_character_data[:allies]).to be_an Array

    expect(first_character_data).to have_key :enemies
    expect(first_character_data[:enemies]).to be_an Array

    expect(first_character_data).to have_key :affiliation
    expect(first_character_data[:affiliation]).to be_a String
  end
end