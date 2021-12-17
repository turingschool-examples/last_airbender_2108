require 'rails_helper'

RSpec.describe 'Search Index page' do
  it 'displays the total number of people that live in the selected nation' do
    visit root_path
    select 'Fire Nation', from: :nation
    click_button 'Search For Members'

    expect(current_path).to eq(search_path)
    expect(page).to have_content("97 Members")
  end

  it 'displays detailed information about the first 25 members' do
    visit root_path
    select 'Fire Nation', from: :nation
    click_button 'Search For Members'

    expect(page).to have_content("Name: Chan (Fire Nation admiral)")
    expect(page).to have_content("Affiliation: Fire Nation Navy")
    expect(page).to have_content("Allies: Ozai")
    expect(page).to have_content("Enemies: Earth Kingdom")

    expect(page).to have_content("Name: Fire Nation train conductor")
    expect(page).to have_content("Affiliation: Fire Nation Fire Nation train")
    expect(page).to have_content("Allies: Aang")
    expect(page).to have_content("Enemies: Combustion Man")
  end
end