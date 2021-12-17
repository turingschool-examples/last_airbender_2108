require 'rails_helper'

RSpec.describe 'Character Service' do
  it 'creates a new Faraday object' do
    expect(CharacterService.conn).to be_a Faraday::Connection
  end

  it 'parses a JSON response and returns an array' do
    url = 'api/v1/characters'
    result = CharacterService.parse(url)

    expect(result).to be_an Array
    expect(result[0]).to have_key :_id
    expect(result[0]).to have_key :name
    expect(result[0]).to have_key :affiliation
    expect(result[0]).to have_key :allies
    expect(result[0]).to have_key :enemies
    expect(result[0]).to have_key :photoUrl
  end

  it 'returns the first 25 characters for a given nation' do
    nation = 'fire_nation'
    result = CharacterService.first_25_characters(nation)

    expect(result.count).to eq 25
    expect(result[0]).to have_key :_id
    expect(result[0]).to have_key :name
    expect(result[0]).to have_key :affiliation
    expect(result[0]).to have_key :allies
    expect(result[0]).to have_key :enemies
  end

  it 'returns all characters associated with a given nation' do
    nation = 'fire_nation'
    result = CharacterService.all_characters(nation)

    expect(result.count).to eq 97
  end
end
