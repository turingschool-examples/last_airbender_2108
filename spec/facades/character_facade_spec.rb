require 'rails_helper'

RSpec.describe 'character facade', :vcr do
  it 'gets the character data of a nation' do
    characters = CharacterFacade.find_nation

    expect(characters).to be_an Array
    expect(characters.first).to be_a Character
  end
end
