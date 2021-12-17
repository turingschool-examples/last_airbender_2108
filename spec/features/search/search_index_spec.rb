require 'rails_helper'

RSpec.describe "Search Page" do
  it 'can search for character by nation' do
    visit "/"
    click_button "Search For Members"
    expect(current_path). to eq("/search")
  end

  it 'shows a count of all characters for that nation' do
    visit "/search"
    characters = SearchFacade.fire_nation

    expect(page).to have_content(characters.count)
  end

  it  'shows the first 25 members and their attributes' do
    visit "/search"
    characters = SearchFacade.fire_nation
    
    expect(page).to have_content(characters[0].id)
    expect(page).to have_content(characters[0].allies)
    expect(page).to have_content(characters[0].enemies)
    expect(page).to have_content(characters[0].name)
    expect(page).to have_content(characters[0].affiliation)
    expect(page).to_not have_content(characters[25].name)
  end
end
