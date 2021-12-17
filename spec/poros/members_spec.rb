require 'rails_helper'

describe Member do
  describe 'object creation' do
    data = {
        "_id": "5cf5679a915ecad153ab68d1",
        "allies": [
            "Riley"
        ],
        "enemies": [],
        "photoUrl": "https://vignette.wikia.nocookie.net/avatar/images/c/c3/Analay.png/revision/latest?cb=20140430182201",
        "name": "Analay",
        "affiliation": "Unnamed team"
    }

    member = Member.new(data)

    it 'has attributes' do
      expect(member).to be_a Member
      expect(member.id).to eq(data[:_id])
      expect(member.id).to eq("5cf5679a915ecad153ab68d1")
      expect(member.allies).to be_an Array
      expect(member.allies).to eq(data[:allies])
      expect(member.enemies).to be_an Array
      expect(member.enemies).to eq(data[:enemies])
      expect(member.photo_url).to eq(data[:photoUrl])
      expect(member.name).to eq(data[:name])
      expect(member.affiliation).to eq(data[:affiliation])
    end
  end
end
