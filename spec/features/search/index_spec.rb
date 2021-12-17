require 'rails_helper'

describe 'search' do
  it 'can return search results for fire nation' do
    visit root_path

    select 'Fire Nation', from: :nation
    click_button 'Search For Members'

    expect(current_path).to eq search_path

    within('#member-0') do
      expect(page).to have_content 'Chan'
    end
  end

  it 'can return search results for earth kingdom' do
    visit root_path

    select 'Earth Kingdom', from: :nation
    click_button 'Search For Members'

    expect(current_path).to eq search_path

    within('#member-0') do
      expect(page).to have_content 'Arik'
    end
  end

  it 'can return search results for water tribe' do
    visit root_path

    select 'Water Tribe', from: :nation
    click_button 'Search For Members'

    expect(current_path).to eq search_path

    within('#member-0') do
      expect(page).to have_content 'Amon'
    end
  end

  it 'can return search results for air nomads' do
    visit root_path

    select 'Air Nomads', from: :nation
    click_button 'Search For Members'

    expect(current_path).to eq search_path

    within('#member-0') do
      expect(page).to have_content 'Aang'
    end
  end
end