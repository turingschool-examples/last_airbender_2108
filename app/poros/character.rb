class Character
  attr_reader :name,
              :photo_url,
              :allies,
              :enemies,
              :affiliation

  def initialize(data)
    @name = data[:name]
    @photo_url = data[:photoUrl]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @affiliation = data[:affiliation]
  end
end