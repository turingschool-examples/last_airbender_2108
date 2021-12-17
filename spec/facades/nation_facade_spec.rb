require 'rails_helper'

RSpec.describe NationFacade do
  before :each do
    @members = NationFacade.members("fire+nation")
  end

  it 'can get members of a nation' do
    first_member = @members.first
    expect(first_member).to be_a(NationMember)
  end
end
