require 'rails_helper'

RSpec.describe 'search index' do
  it 'goes to page' do
    visit search_path

    expect(current_path).to eq('/search')
  end
end
