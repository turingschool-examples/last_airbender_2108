require 'rails_helper'

describe SearchFacade do
  it 'can return all fire nation menbers' do
    characters = SearchFacade.members('fire_nation')

    expect(characters).to be_a Array
    expect(characters.length).to eq 97
  end

  it 'can return all air nomad menbers' do
    characters = SearchFacade.members('air_nomads')

    expect(characters).to be_a Array
    expect(characters.length).to eq 15
  end

  it 'can return all water tribe menbers' do
    characters = SearchFacade.members('water_tribes')

    expect(characters).to be_a Array
    expect(characters.length).to eq 44
  end

  it 'can return all earth kingdom menbers' do
    characters = SearchFacade.members('earth_kingdom')

    expect(characters).to be_a Array
    expect(characters.length).to eq 76
  end
end