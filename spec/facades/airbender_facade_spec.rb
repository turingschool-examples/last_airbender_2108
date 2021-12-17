require 'rails_helper'

RSpec.describe 'Airbender Facade' do
  it 'gets top 40 movies' do
    response = AirbnderFacade.top_40

    expect(response.first).to be_a(Movie)
  end

  xit 'returns searched movies' do
    response = MoviesFacade.movies_by_title('Shawshank')

    expect(response.first.title).to include('Shawshank Redemption')
    expect(response.first).to be_a(Movie)
  end
End
