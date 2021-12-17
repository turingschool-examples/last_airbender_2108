require 'rails_helper'

RSpec.describe 'search index' do
  before do
    visit "/search?nation=fire_nation&commit=Search+For+Members"
  end
  it 'has a title', :vcr do
    expect(page).to have_content('Fire Nation')
  end

  it 'counts total members', :vcr do
    expect(page).to have_content('Total Members')
    expect(page).to have_content('97')
  end

  it 'displays members', :vcr do
    expect(page).to have_content('Bujing')
    expect(page).to have_content('Allies: Ozai')
    expect(page).to have_content('Enemies: Zuko')
    expect(page).to have_content('Affiliations: Fire Nation military')
  end
end
