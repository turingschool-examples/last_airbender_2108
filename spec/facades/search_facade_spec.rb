require 'rails_helper'

RSpec.describe 'Search Facade' do
  it 'gets airbender details' do
    response = SearchFacade.airbender_details

    expect(response.first).to be_a(Airbender)
  end

  it 'returns airbender details' do
    response = SearchFacade.airbender_details

    expect(response.first.name).to eq('Chan (Fire Nation admiral)')
    expect(response.first).to be_a(Airbender)
  end

  it 'returns a count of all benders' do
    response = SearchFacade.total_benders

    expect(response.count).to be_a(100)
  end
end
