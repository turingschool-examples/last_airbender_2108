require "rails_helper"

RSpec.describe Member do
  it 'has attributes' do

    member = Member.new(member_data_for_test[0])

    expect(member.affiliations).to eq("Fire Nation Navy")
    expect(member.allies).to include("Ozai")
    expect(member.enemies).to eq(["Earth Kingdom"])
    expect(member.name).to eq("Chan (Fire Nation admiral)")
  end
  #test somewhere to make sure allies and enemies come out "None" if empty
end
