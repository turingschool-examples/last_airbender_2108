require 'rails_helper'

RSpec.describe 'Airbender Index Page' do
  before(:each) do
    @user = User.create!(name: 'Tammy Tanaka', email: 'tammy@fake_email.com')

    visit movie_index_path(@user)
  end
end
