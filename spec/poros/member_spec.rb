require 'rails_helper'

describe 'Member' do
  it 'can get member details' do
    member1 = Member.new(
          {:_id=>"5cf5679a915ecad153ab68fd",
          :allies=>["Ozai"],
          :enemies=>["Earth Kingdom"],
          :name=>"Chan (Fire Nation admiral)",
          :affiliation=>"Fire Nation Navy"})

    expect(member1.name).to eq("Chan (Fire Nation admiral)")
    expect(member1.enemies).to eq(["Earth Kingdom"])
    expect(member1.affiliation).to eq("Fire Nation Navy")
  end
end
