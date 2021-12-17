require 'rails_helper'

RSpec.describe 'Search Index page' do
  it 'displays the total number of people that live in the selected nation' do
    visit root_path
    select 'Fire Nation', from: :nation
    click_button 'Search For Members'

    expect(current_path).to eq(search_path)
    expect(page).to have_content("The Fire Nation has 100 members")
  end
end