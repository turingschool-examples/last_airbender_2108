class Member
  attr_reader :name,
              :image,
              :enemies,
              :allies,
              :affiliation

  def initialize(member)
    @name = member[:name]
    @image = member[:photoUrl]
    @enemies = enemy_string(member[:enemies])
    @allies = ally_string(member[:allies])
    @affiliation = member[:affiliation]
  end

  def enemy_string(enemies)
    enemy_string = enemies.to_s.tr('"\[]', '')
    if enemy_string.empty?
      'None'
    else
      enemy_string
    end
  end

  def ally_string(allies)
    ally_string = allies.to_s.tr('"\[]', '')
    if ally_string.empty?
      'None'
    else
      ally_string
    end
  end
end
