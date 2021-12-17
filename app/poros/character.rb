class Character
  attr_reader :id,
              :allies,
              :enemies,
              :name,
              :affiliation
              
  def initialize(info)
    @id             = info[:id]
    @allies         = info[:allies]
    @enemies        = info[:enemies]
    @name           = info[:name]
    @affiliation    = info[:affiliation]
  end
end
