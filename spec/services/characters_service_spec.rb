require 'rails_helper'

RSpec.describe CharactersService do
  it 'establishes successful connection' do
    characters = CharactersService.get_characters('fire+nation')

    expect(characters).to be_a(Array)
    expect(characters[0][:name]).to eq('Chan (Fire Nation admiral)')
    expect(characters.count).to eq(25)
  end
end
