require 'rails_helper'

RSpec.describe 'Avatar Facade' do
  it 'creates a character poro', :vcr do
    characters = AvatarFacade.nation_search('Fire Nation')

    expect(characters).to be_an Array
    characters.each do |character|
      expect(character).to be_a Character
    end
  end
end
