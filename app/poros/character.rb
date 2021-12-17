class Character
  attr_reader :_id,
              :allies,
              :enemies,
              :name,
              :affiliation,
              :photoUrl
  def initialize(data)
    @_id = data[:_id]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @name = data[:name]
    @affiliation = data[:affiliation]
    @photoUrl = data[:photoUrl]
  end
end
