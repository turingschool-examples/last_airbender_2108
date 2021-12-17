require 'rails_helper'

RSpec.describe 'Nation search' do
  it 'can get characters that belong to fire nation', :vcr do
    response = AvatarService.nation_search('Fire Nation')

    expect(response).to be_an Array
    expect(response[1]).to be_a Hash

    first_character_data = response[1]

    expect(first_character_data).to have_key(:_id)
    expect(first_character_data[:_id]).to be_a String
  end

end
