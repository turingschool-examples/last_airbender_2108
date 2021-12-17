require 'rails_helper'

describe Member do
  it 'exists' do
    member = Member.new(member_data)
    expect(member).to be_an_instance_of(Member)
  end

  it 'attributes' do

    member = Member.new(member_data)

    #member_data is in rails_helper

    expect(member.name).to eq("Afiko")
    expect(member.photo).to eq(
      "https://vignette.wikia.nocookie.net/avatar/images/2/24/Afiko.png/revision/latest?cb=20121121024128")
    expect(member.allies).to eq(["Fire Nation"])
    expect(member.enemies).to eq(["Aang"])
    expect(member.affiliations).to eq("Fire Nation")
  end
end
