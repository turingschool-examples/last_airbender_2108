class Member
  attr_reader :name, :id, :photo, :allies, :enemies, :affilliations

  def initialize(member)
    @name = member[:name]
    @id = member[:_id]
    @photo = member[:photoUrl]
    @allies = member[:allies]
    @enemies = member[:enemies]
    @affilliations = member[:affilliation]
  end
end
