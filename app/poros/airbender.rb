class Airbender
  attr_reader :name, :allies, :affiliation, :enemies, :image

  def initialize(data)
    @name = data[:name]
    @allies = data[:allies]
    @affiliation = data[:affiliation]
    @enemies = data[:enemies]
    @photo = data[:photoURL]
  end
end
