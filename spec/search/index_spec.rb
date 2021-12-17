require 'rails_helper'

describe 'search index' do
  before(:each) do
    visit "/"
    select "Fire Nation", from: 'nation'
    click_button "Search For Members"
  end

  it 'shows first 25 members of fire nation' do
    expect(current_path).to eq("/search")

    expect(page).to have_content('Chan (Fire Nation admiral)')
    expect(page).to have_content('Fire Nation train conductor')
    expect(page).to_not have_content('Great Sage')
  end

  it 'says how many members of fire nation there are' do

    expect(page).to have_content("Total Members of Fire Nation: 97")
  end

  it 'shows the name, allies, enemies, and affiliations that each character has' do
    within 'div#bujing' do
      expect(page).to have_content('Bujing')
      expect(page).to have_content('Ozai') # allies
      expect(page).to have_content('Zuko') # enemies
      expect(page).to have_content('Fire Nation military')
      expect(page).to have_css("img[src*='https://vignette.wikia.nocookie.net/avatar/images/7/76/Bujing.png/revision/latest?cb=20130714152817']")
    end
  end
end
