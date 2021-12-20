require 'rails_helper'
# ber spec/facades/airbender_facade_spec.rb
RSpec.describe 'Airbender Facade' do
  it 'returns member data per nation' do
    members = AirbenderFacade.search_members_by_nation("fire+nation")

    expect(members.count).to eq(20)
    #this should be close to 100
    expect(members).to be_an(Array)
    # expect(members[0]).to be_a(Hash)
    # expect(members[0]).to have_key :allies
    # expect(members[0][:allies]).to be_an Array
    # expect(members[0]).to have_key :enemies
    # expect(members[0][:enemies]).to be_an Array
    # expect(members[0]).to have_key :name
    # expect(members[0][:name]).to be_a String
    # expect(members[0]).to have_key :affiliation
    # expect(members[0][:affiliation]).to be_a String
  end

  it 'returns 25 members' do
    first_25 = AirbenderFacade.first_25("fire+nation")

    expect(first_25.count).to eq(25)
  end
  xit 'returns a member object from search' do
    members = AirbenderFacade.search_members_by_nation("fire+nation")

    expect(member).to be_a Member
  end
end
