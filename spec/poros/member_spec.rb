require 'rails_helper'

RSpec.describe 'Member' do
  it 'can get member details' do
    member1 = Member.new(
          {:_id=>"5cf5679a915ecad153ab68fd",
          :allies=>["Ozai"],
          :enemies=>["Earth Kingdom"],
          :photoUrl=>"https://vignette.wikia.nocookie.net/avatar/images/a/a5/Circus_master.png/revision/latest?cb=20130706153819",
          :name=>"Chan (Fire Nation admiral)",
          :affiliation=>"Fire Nation Navy"})

    expect(member1).to be_a Member
    expect(member1.allies).to be_a Array
    expect(member1.allies).to eq(["Ozai"])
    expect(member1.name).to be_a String
    expect(member1.name).to eq("Chan (Fire Nation admiral)")
    expect(member1.enemies).to be_a Array
    expect(member1.enemies).to eq(["Earth Kingdom"])
    expect(member1.affiliation).to be_a String
    expect(member1.affiliation).to eq("Fire Nation Navy")
    expect(member1.photo).to be_a String
    expect(member1.photo).to eq("https://vignette.wikia.nocookie.net/avatar/images/a/a5/Circus_master.png/revision/latest?cb=20130706153819")
  end
end
