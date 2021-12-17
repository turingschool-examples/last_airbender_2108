require 'rails_helper'

RSpec.describe 'Last Airbender API' do
  describe 'happy path' do
    it 'can get details by affiliation' do
      response = MemberService.member_information('Fire Nation')
#require "pry"; binding.pry
      expect(response).to be_a Array
      #expect(response[:data]).to be_a Array

      # first_member_data = response.first
      #
      # expect(first_member_data).to have_key :

    end
  end
end
