require 'rails_helper'

describe 'MemberFacade' do
  xit 'can get member details' do
    member = MemberFacade.member_information('Fire Nation')

    expect(member). to be_a Array
    expect(member.count).to eq(25)
  end
end
