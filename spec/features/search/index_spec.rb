require 'rails_helper'

RSpec.describe 'Search Page' do
  it 'lists the members who live in a nation' do
    visit '/'
    select "Fire Nation", :from => "nation"

    click_button

    expect(page).to have_content("Number of members: 20")
    expect(page).to have_content("Nation: Fire nation")
    expect(page).to have_content("Name: Chan (Fire Nation admiral)")
    expect(page).to have_content("Allies: Ozai")
    expect(page).to have_content("Enemies: Earth Kingdom")
    expect(page).to have_content("Affiliations: Fire Nation Navy")

    expect(page).to have_content("Name: Circus master")
  end

end
