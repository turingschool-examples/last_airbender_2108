class Member
  attr_reader :name,
              :allies,
              :enemies,
              :affiliation,
              :photoUrl

  def initialize(data)
    @name = data[:name]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @affiliation = data[:affiliation]
    @photoUrl = data[:photoUrl]
  end

  def format_allies
    if @allies.empty?
      @allies = "None"
    else
      @allies.join(", ")
    end
  end

  def format_enemies
    if @enemies.empty?
      @enemies = "None"
    else
      @enemies.join(", ")
    end
  end
end
