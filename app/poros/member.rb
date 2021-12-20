class Member
  attr_reader :name,
              :allies,
              :enemies,
              :affiliation

  def initialize(data)
    @name = data[:name]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @affiliation = data[:affiliation]
  end

  def no_allies(allies)
    @allies
  end
end
