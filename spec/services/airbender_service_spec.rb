require 'rails_helper'

RSpec.describe AirbenderService do
  it 'data from API' do
    response = AirbenderService.get_data('/api/v1/characters?affiliation=fire+nation')

    expect(response).to be_a(Array)
    expect(response.first).to have_key(:allies)
    expect(response.first).to have_key(:enemies)
    expect(response.first).to have_key(:name)
    expect(response.first).to have_key(:affiliation)
  end
end
