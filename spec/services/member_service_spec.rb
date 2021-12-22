require 'rails_helper'

RSpec.describe MemberService do
    it 'can get details by affiliation' do

      service = MemberService.new
      response = service.nation_members('fire_nation')

      expect(response).to be_a Array
      expect(response.count).to eq(20)

      first_member = response.first

      expect(first_member.name).to be_a String
      expect(first_member).to have_attributes(name: "Chan (Fire Nation admiral)")

      expect(first_member.allies).to be_a Array
      expect(first_member).to have_attributes(allies: ["Ozai"])

      expect(first_member.enemies).to be_a Array
      expect(first_member).to have_attributes(enemies: ["Earth Kingdom"])

      expect(first_member.affiliation).to be_a String
      expect(first_member).to have_attributes(affiliation: "Fire Nation Navy")

      # expect(first_member.photo).to be_a String
      # expect(first_member).to have_attributes(photo: "https://vignette.wikia.nocookie.net/avatar/images/a/a5/Circus_master.png/revision/latest?cb=20130706153819")
    end
end
