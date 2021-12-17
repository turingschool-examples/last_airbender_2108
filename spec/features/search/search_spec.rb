require 'rails_helper'

RSpec.describe 'Search' do
  it 'redirects to the search path' do
    visit root_path

    select 'Fire Nation', from: :nation
    click_on 'Search For Members'

    expect(current_path).to eq '/search'
  end
end
