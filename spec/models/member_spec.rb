require 'rails_helper'

describe Member do
  it 'exists' do
    member = Member.new(member_data)
    expect(member).to be_an_instance_of(Member)
  end

  it 'attributes' do

    member = Member.new(member_data)

    expect(member.name).to eq(member.name)
    expect(member.photo).to eq(member.photo)
    expect(member.allies).to eq(member.allies)
    expect(member.enemies).to eq(member.enemies)
    expect(member.affilliations).to eq(member.affilliations)
  end
end
