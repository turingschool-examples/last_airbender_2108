require 'rails_helper'

RSpec.describe Character do
  let(:character) { Character.new(fire_nation_data) }

  it 'has attributes' do

    expect(character._id).to eq("5cf5679a915ecad153ab68fd")
    expect(character.allies).to eq(["Ozai"])
    expect(character.enemies).to eq(["Earth Kingdom"])
    expect(character.name).to eq("Chan (Fire Nation admiral)")
    expect(character.affiliation).to eq("Fire Nation Navy")

  end
end
