require 'rails_helper'

RSpec.describe 'character page' do
  describe 'happy path' do
    it 'shows a list of characters and their data' do
      visit '/'

      select "Fire Nation"

      expect(page.status_code).to eq 200
      expect(page).to have_content("Fire Nation")
    end
  end
end