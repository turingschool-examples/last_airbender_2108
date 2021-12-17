require 'rails_helper'

describe 'Airbender Facade' do
  it 'returns at most the first 25 members of a given nation' do
    expect(AirbenderFacade.first_25('fire_nation').length).to eq(25)
    expect(AirbenderFacade.first_25('earth_kingdom').length).to eq(25)
    expect(AirbenderFacade.first_25('air_nomads').length).to eq(15)
    expect(AirbenderFacade.first_25('water_tribes').length).to eq(1)
  end

  it 'returns the total number of members for a given nation' do
    expect(AirbenderFacade.total_members('fire+nation')).to eq(97)
    expect(AirbenderFacade.total_members('earth+kingdom')).to eq(76)
    expect(AirbenderFacade.total_members('air+nomads')).to eq(15)
    expect(AirbenderFacade.total_members('water+tribes')).to eq(1)
  end
end
