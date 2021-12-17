class Member
  attr_reader :name, :photo, :allies, :enemies, :affiliations

  def initialize (member_data)
    @name = member_data[:name]
    @photo = member_data[:photoUrl]
    @allies = member_data[:allies]
    @enemies = member_data[:enemies]
    @affiliations = member_data[:affiliation]
  end
end
