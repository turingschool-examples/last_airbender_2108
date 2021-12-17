require 'rails_helper'

RSpec.describe 'Nation Service' do
  before :each do
    nation = "fire+nation"
    @members = NationService.get_members(nation)
  end
  it 'can return the members of a nation' do
    require "pry"; binding.pry
  end
end
