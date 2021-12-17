require 'rails_helper'

RSpec.describe 'basic character object' do
  it 'has attributes' do
    character = Character.new(character_data)

    expect(character.name).to eq('Circus master')
    expect(character.allies).to eq('Ty Lee')
    expect(character.enemies).to eq('Appa')
    expect(character.affiliation).to eq('Fire Nation circus')
    expect(character.photoUrl).to eq('https://vignette.wikia.nocookie.net/avatar/images/a/a5/Circus_master.png/revision/latest?cb=20130706153819')
  end
end
