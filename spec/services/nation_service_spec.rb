require 'rails_helper'

RSpec.describe 'Nation Service' do
  before :each do
    nation = "fire+nation"
    @members = NationService.get_members(nation)
  end

  it 'can return the members of a nation' do
    expect(@members).to be_an(Array)
    @members.each do |member|
      expect(member).to have_key(:name)
      expect(member[:name]).to be_a(String)
      expect(member).to have_key(:allies)
      expect(member[:allies]).to be_an(Array)
      expect(member).to have_key(:enemies)
      expect(member[:enemies]).to be_an(Array)
      expect(member).to have_key(:affiliation)
      expect(member[:affiliation]).to be_a(String)
    end
  end
end
