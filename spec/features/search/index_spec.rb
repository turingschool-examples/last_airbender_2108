require 'rails_helper'

RSpec.describe 'Search Page' do


  it 'lists the members who live in a nation' do
    members = (fire_nation_data.each do |o|
                  Member.new(o)
                end)
    visit '/'
    select "Fire Nation", :from => "nation"
    click_button
    expect(page).to have_content("Chan (Fire Nation admiral)")
    expect(page).to have_content("Circus master")
  end

end
