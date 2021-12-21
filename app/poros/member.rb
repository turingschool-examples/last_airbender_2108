class Member
  attr_reader :name, :enemies, :affiliation, :allies, :photo

  def initialize(attribute)
    @name = attribute[:name]
    @enemies = attribute[:enemies]
    @photo = attribute[:photoUrl]
    @affiliation = attribute[:affiliation]
    @allies = attribute[:allies]
  end

end
