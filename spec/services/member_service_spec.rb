require 'rails_helper'

RSpec.describe 'Last Airbender API' do
  describe 'happy path' do
    xit 'can get details by affiliation' do
      response = MemberService.member_information('Fire Nation')

      expect(response).to be_a Array

      first_member = response.first

      expect(first_member).to have_key :name
      expect(first_member[:name]).to be_a String

      expect(first_member).to have_key :enemies
      expect(first_member[:enemies]).to be_a Array

      expect(first_member).to have_key :affiliation
      expect(first_member[:affiliation]).to be_a String

    end
  end
end
