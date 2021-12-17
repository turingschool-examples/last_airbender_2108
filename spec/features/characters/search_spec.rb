require 'rails_helper'

RSpec.describe 'Character search' do
  before(:each) do
    visit '/'
  end

  it 'has the ability to search for characters by team' do
    select 'Fire Nation', from: "nation"

    expect(page).to have_content("Admiral Chan")
    expect(page).to have_content("Fire Nation")
  end
end