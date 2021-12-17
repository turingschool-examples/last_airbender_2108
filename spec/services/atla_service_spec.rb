require 'rails_helper'

describe AtlaService do
  it 'returns all air nomads' do
    data = AtlaService.air_nomads

    expect(data).to be_a Array
    expect(data.length).to eq 15
  end

  it 'returns all water tribe members' do
    data = AtlaService.water_tribe

    expect(data).to be_a Array
    expect(data.length).to eq 44
  end

  it 'returns all earth kingdom members' do
    data = AtlaService.earth_kingdom

    expect(data).to be_a Array
    expect(data.length).to eq 76
  end

  it 'returns all fire nation members' do
    data = AtlaService.fire_nation

    expect(data).to be_a Array
    expect(data.length).to eq 97
  end
end