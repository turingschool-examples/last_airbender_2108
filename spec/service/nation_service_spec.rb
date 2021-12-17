require 'rails_helper'

RSpec.describe 'Nation Service Spec' do
  it 'pulls data from the various endpoints' do
    expect(NationService.fire_nation_members).to be_an Array
    expect(NationService.fire_nation_members.first).to be_a Hash
    expect(NationService.air_nomads_members).to be_an Array
    expect(NationService.air_nomads_members.first).to be_a Hash
    expect(NationService.earth_kingdom_members).to be_an Array
    expect(NationService.earth_kingdom_members.first).to be_a Hash
    expect(NationService.water_tribes_members).to be_an Array
    expect(NationService.water_tribes_members.first).to be_a Hash
  end
end