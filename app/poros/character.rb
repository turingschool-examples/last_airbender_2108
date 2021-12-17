class Character
  attr_reader :allies,
              :enemies,
              :name,
              :photo,
              :affiliation

  def initialize(data)
    @allies = data[:allies]
    @enemies = data[:enemies]
    @name = data[:name]
    @photo = data[:photoUrl]
    @affiliation = data[:affiliation]
  end
end