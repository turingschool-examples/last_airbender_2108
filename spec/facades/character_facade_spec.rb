require 'rails_helper'

RSpec.describe 'Character Facade' do 
  describe '.get_all_characters' do 
    it 'returns all characters from a nation', :vcr do
      nation_param = 'Fire+Nation'  
      characters = CharacterFacade.get_all_characters(nation_param)

      expect(characters).to be_an(Array)
    end 
  end 
end 