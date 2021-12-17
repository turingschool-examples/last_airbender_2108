require 'rails_helper'

RSpec.describe 'TLA Facade' do
  it '.affiliated_characters', :vcr do
    characters = TlaFacade.affiliated_characters("Air Nomads")
    
    expect(characters).to be_an Array
    characters.each do |character|
      expect(character).to be_a Character
    end
  end
end