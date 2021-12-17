class Member
  attr_reader :name, :enemies, :affiliation

  def initialize(member_data)
    @name = member_data[:name]
    @enemies = member_data[:enemies]
    @affiliation = member_data[:affiliation]
  end

end
