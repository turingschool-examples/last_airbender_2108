require 'rails_helper'

RSpec.describe Character do
  let(:character) { Character.new(character_data) }

  it 'has attributes' do
    expect(character.name).to eq('Ember Island Players')
    expect(character.photo_url).to eq("https://vignette.wikia.nocookie.net/avatar/images/9/9d/Chan.png/revision/latest?cb=20140908141053")
    expect(character.allies).to eq(["Admiral Chan"])
    expect(character.enemies).to eq(["Azula"])
    expect(character.affiliation).to eq("Fire Nation")
  end

  describe '#hyphenated_name' do
    it 'hyphenates name for use in CSS id' do
      expect(character.hyphenated_name).to eq('Ember-Island-Players')
    end
  end
end