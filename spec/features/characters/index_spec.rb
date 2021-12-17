require 'rails_helper'

RSpec.describe 'character page' do
  describe 'happy path' do
    it 'shows a list of characters and their data' do
      visit '/search'

      expect(page.status_code).to eq 200
      expect(page).to have_content("Azulon")
      expect(page).to have_content("High Sage")
    end
  end
end