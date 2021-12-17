class Member
  attr_reader :name, :id, :photo, :allies, :enemies, :affiliations

  def initialize(member)
    @name = member[:name]
    @id = member[:_id]
    @photo = member[:photoUrl]
    @allies = member[:allies]
    @enemies = member[:enemies]
    @affiliations = member[:affiliation]
  end
end
