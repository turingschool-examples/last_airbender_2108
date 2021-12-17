class Character
  attr_reader :name,
              :allies,
              :enemies,
              :affiliation,
              :photoUrl

  def initialize(data, allies: 'None', enemies: 'None', affiliation: 'None')
    @name         = data[:name]
    @allies       = data[:allies].join(", ")
    @enemies      = data[:enemies].join(", ")
    @affiliation  = data[:affiliation]
    @photoUrl    = data[:photoUrl]
  end
end
