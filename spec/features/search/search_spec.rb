require 'rails_helper'

RSpec.describe 'Search' do
  before :each do
    visit root_path
    @nation = 'Fire Nation'
    select @nation, from: :nation
    click_on 'Search For Members'
  end

  describe 'happy path' do
    it 'redirects to the search path' do
      expect(current_path).to eq '/search'
    end

    it 'displays the total number of people who live in the nation' do
      expect(page).to have_content "Total members of #{@nation}: 97"
    end

    it 'displays detailed information for the first 25 members' do
      expect(page).to have_content("Name: ", count: 25)
      expect(page).to have_content("Allies: ", count: 25)
      expect(page).to have_content("Enemies: ", count: 25)
    end

    it 'displays a name, photo, and list of allies, enemies, and affiliations for each member' do
      expect(page).to have_content 'Name: Chan (Fire Nation admiral)'
      # presence of img not tested
      expect(page).to have_content 'Allies: Ozai'
      expect(page).to have_content 'Enemies: Earth Kingdom'
    end
  end
end
