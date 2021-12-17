require 'rails_helper'

RSpec.describe AirbenderFacade do
  it '.nation_members returns array of member objects' do
    members = AirbenderFacade.nation_members('fire_nation')

    expect(members).to be_an(Array)
    expect(members[0]).to be_a(Member)
  end
end
