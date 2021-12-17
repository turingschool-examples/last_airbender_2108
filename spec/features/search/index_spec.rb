require 'rails_helper'
# rspec spec/features/search/index_spec.rb
RSpec.describe 'Nation Search' do
  before :each do
    visit root_path
    select "Fire Nation"
    click_on "Search For Members"
  end

  it 'has attributes' do
    @members = AirbenderFacade.search_members_by_nation('fire+nation')

    expect(page).to have_content("Name:")
    expect(page).to have_content("Photo:")
    expect(page).to have_content("Allies:")
    expect(page).to have_content("Enemies:")
    expect(page).to have_content("Affiliations:")
  end


  it 'can get to searched results page successfully' do
    expect(page.status_code).to eq 200
    expect(current_path).to eq(search_path)
  end

  xit 'returns total results for searched nation' do
    expect(page).to have_content('')
    expect(page).to have_content('')
    expect(page).to have_content('')
    expect(page).to have_content('')
    expect(page).to have_content('')
  end

  xit 'returns top 25 members in searched nation' do
  end
end
# <h3>Total Results: <%= @members %></h3>
#
# <% @members[:members][0..24].each do |member| %>
#   Name: <%= member.name %><br>
#   Photo: <%= member.photoUrl %><br>
#   Allies: <%= member.allies %><br>
#   Enemies: <%= member.enemies %><br><br>
#   Affiliations: <%= member.affiliation %><br><br>
# <% end %><br><br>

# <% end %><br><br>
