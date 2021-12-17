# As a user,
# When I visit "/"
# And I Select "Fire Nation" from the select field
# (Note: Use the existing select field)
# And I click "Search For Members"
# Then I should be on page "/search"
# Then I should see the total number of people who live in the Fire Nation. (should be close to 100)
# And I should see a list with the detailed information for the first 25 members of the Fire Nation.
#
# And for each of the members I should see:
# - The name of the member (and their photo, if they have one)
# - The list of allies or "None"
# - The list of enemies or "None"
# - Any affiliations that the member has
require 'rails_helper'

RSpec.describe 'Search Index' do
  before :each do
    @members = NationFacade.members("fire_nation")
    visit '/'
    select 'Fire Nation', from: :nation
    click_button "Search For Members"
  end
  it 'returns the results of a search by nation' do
    expect(current_path).to eq("/search")
    expect(page).to have_content("Members of the #{@members.first.nation}")
  end

  it 'gives a count of total population' do
    expect(current_path).to eq("/search")
    expect(page).to have_content("Total Population: #{@members.count}")
  end


  xit 'displays the characters attributes' do
    within("#mem-Circus master") do
      expect(page).to have_content("Name: Circus master")
      expect(page).to have_content("Allies: Ty Lee")
      expect(page).to have_content("Enemies: Appa")
      expect(page).to have_content("Affiliations: Fire Nation circus")
    end
  end
end
