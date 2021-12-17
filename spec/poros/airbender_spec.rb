require 'rails_helper'

RSpec.describe Airbender do
  let(:data) do
    { affiliation: "Fire Nation Navy",
      allies: ["Ozai"],
      enemies: ["Earth Kingdom"],
      image: nil,
      name: "Chan (Fire Nation admiral)" }
  end

  let(:airbender) { Airbender.new(data) }

  it 'exists' do
    expect(airbender).to be_a(Airbender)
  end

  it 'has attributes' do
    expect(airbender.name).to eq('Chan (Fire Nation admiral)')
    expect(airbender.affiliation).to eq('Fire Nation Navy')
    expect(airbender.allies.first).to eq("Ozai")
    expect(airbender.enemies.first).to eq("Earth Kingdom")
    expect(airbender.image).to eq(nil)
  end
end
