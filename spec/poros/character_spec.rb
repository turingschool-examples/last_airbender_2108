require 'rails_helper'

RSpec.describe Character do
  it 'exists' do
    data = {
      name: 'John',
      allies: 'UNSC',
      enemies: 'Covenant',
      photoUrl: 'random url'
    }

    character = Character.new(data)

    expect(character).to be_a(Character)
    expect(character.name).to eq('John')
    expect(character.allies).to eq('UNSC')
    expect(character.enemies).to eq('Covenant')
    expect(character.photo).to eq('random url')
  end
end
