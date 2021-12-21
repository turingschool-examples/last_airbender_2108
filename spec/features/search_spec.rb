require 'rails_helper'

RSpec.describe 'user can search for airbender members' do
  it 'should show Fire Nation Members and their data' do
    visit '/'

    select 'Fire Nation', from: :nation
    click_on 'Search For Members'

    expect(current_path).to eq('/search')
  
    expect(page).to have_content('There are 20 members of the Fire Nation')

    expect(page).to have_content("Chan (Fire Nation admiral)")
    expect(page).to have_content("Ty Lee")
    expect(page).to have_content("Appa")
    expect(page).to have_css("img[src*='https://vignette.wikia.nocookie.net/avatar/images/a/a5/Circus_master.png/revision/latest?cb=20130706153819']")
    expect(page).to have_content("Fire Nation circus")
  end
end
