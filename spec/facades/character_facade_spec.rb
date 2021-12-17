require 'rails_helper'

RSpec.describe 'Character Facade' do
  it 'gets fire nation characters' do
    characters = CharacterFacade.get_fire

    expect(characters.first).to be_a(Hash)
  end
end