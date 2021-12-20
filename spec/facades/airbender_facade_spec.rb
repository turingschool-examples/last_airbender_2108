require 'rails_helper'
# ber spec/facades/airbender_facade_spec.rb
RSpec.describe 'Airbender Facade' do
  it 'returns data on members of fire nation' do
    fire_nation_members = AirbenderFacade.members_by_nation("fire+nation")

    expect(fire_nation_members.count).to eq(97)
    expect(fire_nation_members).to be_an(Array)

    expect(fire_nation_members[0]).to have_key :_id
    expect(fire_nation_members[0][:_id]).to be_a String

    expect(fire_nation_members[0]).to have_key :allies
    expect(fire_nation_members[0][:allies]).to be_an Array

    expect(fire_nation_members[0]).to have_key :enemies
    expect(fire_nation_members[0][:enemies]).to be_an Array

    expect(fire_nation_members[0]).to have_key :name
    expect(fire_nation_members[0][:name]).to be_a String

    expect(fire_nation_members[0]).to have_key :affiliation
    expect(fire_nation_members[0][:affiliation]).to be_a String

    expect(fire_nation_members[1]).to have_key :photoUrl
    expect(fire_nation_members[1][:photoUrl]).to be_a String
  end

  it 'returns members of a nation as objects' do
    member_objects = AirbenderFacade.members("fire+nation")

    expect(member_objects.first).to be_a Member

    member2 = member_objects[1]

    expect(member2).to be_a Member
    expect(member2.name).to be_a String
    expect(member2.format_allies).to be_a String
    expect(member2.format_enemies).to be_a String
    expect(member2.affiliation).to be_a String
    expect(member2.photoUrl).to be_a String
  end

  it 'returns correct count of members from each nation' do
    air_nomads = AirbenderFacade.members_by_nation("air+nomads")

    expect(air_nomads.count).to eq(15)

    water_tribes = AirbenderFacade.members_by_nation("water+tribes")

    expect(water_tribes.count).to eq(1)

    earth_kingdom = AirbenderFacade.members_by_nation("earth+kingdom")

    expect(earth_kingdom.count).to eq(76)

    fire_nation = AirbenderFacade.members_by_nation("fire+nation")

    expect(fire_nation.count).to eq(97)
  end
end
