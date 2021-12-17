class CharacterSerializer
  include JSONAPI::Serializer
  attributes :name, :allies, :enemies, :affiliation, :photoUrl
end
