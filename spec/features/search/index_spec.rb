require 'rails_helper'

RSpec.describe 'Search Index page' do
  it 'displays the total number of people that live in the Fire Nation' do
    visit root_path
    select 'Fire Nation', from: :nation
    click_button 'Search For Members'

    expect(current_path).to eq(search_path)
    expect(page).to have_content("97 Members")
  end

  it 'displays detailed information about the first 25 members of the Fire Nation' do
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

  it 'displays the total number of people that live in the Air Nomads' do
    visit root_path
    select 'Air Nomads', from: :nation
    click_button 'Search For Members'

    expect(current_path).to eq(search_path)
    expect(page).to have_content("15 Members")
  end

  it 'displays detailed information about the first 25 members in the Air Nomads' do
    visit root_path
    select 'Air Nomads', from: :nation
    click_button 'Search For Members'

    expect(page).to have_content("Name: Aang (pilot)")
    expect(page).to have_content("Affiliation: Air Nomads Team Avatar")
    expect(page).to have_content("Allies: Kya")
    expect(page).to have_content("Enemies: Zuko")

    expect(page).to have_content("Name: Momo")
    expect(page).to have_content("Affiliation: Air Nomads Team Avatar")
    expect(page).to have_content("Allies: Aang")
    expect(page).to have_content("Enemies: Ozai")
  end

  it 'displays the total number of people that live in the Earth Kingdom' do
    visit root_path
    select 'Earth Kingdom', from: :nation
    click_button 'Search For Members'

    expect(current_path).to eq(search_path)
    expect(page).to have_content("76 Members")
  end

  it 'displays detailed information about the first 25 members of the Earch Kingdom' do
    visit root_path
    select 'Earth Kingdom', from: :nation
    click_button 'Search For Members'

    expect(page).to have_content("Name: Arik")
    expect(page).to have_content("Affiliation: Earth Kingdom Air Force")
    expect(page).to have_content("Allies: His ")
    expect(page).to have_content("Enemies: Korra")

    expect(page).to have_content("Name: Haru's mother")
    expect(page).to have_content("Affiliation: Earth Kingdom")
    expect(page).to have_content("Allies: Aang ")
    expect(page).to have_content("Enemies: Fire Nation")
  end

  it 'displays the total number of people that live in the Water Tribes' do
    visit root_path
    select 'Water Tribes', from: :nation
    click_button 'Search For Members'

    expect(current_path).to eq(search_path)
    expect(page).to have_content("44 Members")
  end

  it 'displays detailed information about the first 25 members of the Water Tribes' do
    visit root_path
    select 'Water Tribes', from: :nation
    click_button 'Search For Members'

    expect(page).to have_content("Name: Amon")
    expect(page).to have_content("Affiliation: Equalists (formerly) Northern Water Tribe (formerly)")
    expect(page).to have_content("Allies: Tarrlok ")
    expect(page).to have_content("Enemies: Lin Beifong")

    expect(page).to have_content("Name: Niyok")
    expect(page).to have_content("Affiliation: Earthen Fire Refinery Water Tribe")
    expect(page).to have_content("Allies: Nutha ")
    expect(page).to have_content("Enemies: None")
  end
end