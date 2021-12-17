require 'rails_helper'

RSpec.describe 'Airbender Index Page' do
  describe 'bender detail methods' do
    before(:each) do
      @ab1 = SearchFacade.airbender_details.first
      @ab2 = SearchFacade.airbender_details.last

      visit '/search'
    end

    it 'shows a list of airbenders and details' do
      expect(page).to have_content(@ab1.name)
      expect(page).to have_content(@ab1.affiliation)
      expect(page).to have_content(@ab1.allies.first)
      expect(page).to have_content(@ab2.name)
      expect(page).to have_content(@ab2.affiliation)
      expect(page).to have_content(@ab2.allies.first)
      expect(SearchFacade.airbender_details.count).to eq(25)
    end
  end

  it 'shows total number of benders' do
    total_fire_benders = SearchFacade.total_benders

    expect(SearchFacade.total_benders.count).to eq(100)
  end
end
