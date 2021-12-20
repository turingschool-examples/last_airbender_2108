require 'rails_helper'
# ber spec/features/search/index_spec.rb
RSpec.describe 'Nation Search' do
  before :each do
    visit root_path
    select "Fire Nation"
    click_on "Search For Members"
  end

  it 'has total number of people who live in fire nation' do
    expect(page).to have_content("Total Members: 97")

    within '#nation-data' do
      expect(page).to have_content("Total Members: 97")
    end
  end

  it 'lists attributes for each of the first 25 members in fire nation' do
    expect(page).to have_content("Name:", count: 25)
    expect(page).to have_content("Allies:", count: 25)
    expect(page).to have_content("Enemies:", count: 25)
    expect(page).to have_content("Affiliations:", count: 25)
    
    expect(page).to_not have_content("Affiliations: Earth Kingdom")
    expect(page).to_not have_content("Affiliations: Air Nomads")
    expect(page).to_not have_content("Affiliations: Water Tribes")

    within "#member-Chan" do
      expect(page).to have_content("Name: Chan")
      expect(page).to have_content("Allies: Admiral Chan")
      expect(page).to have_content("Enemies: Azul")
      expect(page).to have_content("Affiliations: Fire Nation")
      expect(page).to have_css('img')
    end
  end

  it "lists 'None' when member has no enemies" do
    within "#member-Elua" do
      expect(page).to have_content("Name: Elua")
      expect(page).to have_content("Allies: Ozai")
      expect(page).to have_content("Enemies: None")
      expect(page).to have_content("Affiliations: Fire Nation")
      expect(page).to have_css('img')
    end
  end

  it 'returns "None" for no allies or no enemies' do
    member = Member.new(name: "Elua", allies: [], enemies: [], affiliation: "Fire Nation")

    expect(member.format_allies).to eq("None")
    expect(member.format_enemies).to eq("None")
  end
end
