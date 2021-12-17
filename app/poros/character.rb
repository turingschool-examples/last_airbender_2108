class Character
  attr_reader :name,
              :allies,
              :enemies,
              :affiliations

  def initialize
    @name = data[:name]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @affiliations = data[:affiliations]
  end
end