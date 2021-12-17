class NationMember
  attr_reader :name, :photoUrl, :allies, :enemies, :affiliations, :nation

  def initialize(data, nation)
    @name = data[:name]
    @photoUrl = data[:photoUrl]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @affiliations = data[:affiliation]
    @nation = nation.gsub("+", " ").capitalize!
  end
end
