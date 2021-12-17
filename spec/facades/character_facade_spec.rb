require 'rails_helper'

RSpec.describe CharacterFacade do
  it 'can return the character info, nation, and count as one superobject' do
    nation = 'fire_nation'
    result = CharacterFacade.character_info(nation)

    expect(result.count).to eq 3
    expect(result).to have_key :nation
    expect(result).to have_key :characters
    expect(result).to have_key :count

    expect(result[:characters].count).to eq 25
    expect(result[:characters][0]).to have_key :name
    expect(result[:characters][0]).to have_key :affiliation
    expect(result[:characters][0]).to have_key :allies
    expect(result[:characters][0]).to have_key :enemies
  end
end
