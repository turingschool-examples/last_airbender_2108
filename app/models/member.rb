class Member
  attr_reader :name, :id, :photo, :allies, :enemies, :affilliations

  def initialize(member)
    @name = member[:attributes][:name]
    @id = member[:id]
    @photo = member[:attributes][:photo]
    @allies = member[:attributes][:allies]
    @enemies = member[:attributes][:enemies]
    @affilliations = member[:attributes][:affilliations]
  end
end
