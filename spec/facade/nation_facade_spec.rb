require 'rails_helper'

RSpec.describe 'Nation Facade Spec' do
  it 'creates an array of Members based on the nation given' do
    expect(NationFacade.fire_nation_members).to be_an Array
    expect(NationFacade.fire_nation_members.first).to be_a Member
    expect(NationFacade.air_nomads_members).to be_an Array
    expect(NationFacade.air_nomads_members.first).to be_a Member
    expect(NationFacade.earth_kingdom_members).to be_an Array
    expect(NationFacade.earth_kingdom_members.first).to be_a Member
    expect(NationFacade.water_tribes_members).to be_an Array
    expect(NationFacade.water_tribes_members.first).to be_a Member
  end
end