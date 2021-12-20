require 'rails_helper'
# ber spec/features/welcome/index_spec.rb
RSpec.describe 'welcome page' do
  before :each do
    visit root_path
  end

  it 'has a title and search button' do
    expect(page).to have_content("The Four Nations")
    expect(page).to have_content("Search For Members by their Nation")
    expect(page).to have_button("Search For Members")
  end

  it 'can search for members by their Nation' do
    select "Fire Nation"
    click_on "Search For Members"

    expect(page.status_code).to eq 200
    expect(current_path).to eq(search_path)
  end
  it 'returns info on selected nation' do
    select "Fire Nation"
    click_on "Search For Members"

    expect(page).to have_content("Fire Nation")
    expect(page).to have_content("Total Members:")
  end
end
