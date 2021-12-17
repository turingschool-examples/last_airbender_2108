require 'rails_helper'

RSpec.describe CharactersFacade do
  it 'successfully creates poros' do
    characters = CharactersFacade.characters_search('fire+nation')

    expect(characters.first).to be_a(Character)
    expect(characters.first.name).to eq('Chan (Fire Nation admiral)')
  end
end
