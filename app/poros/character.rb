class Character 
  attr_reader :name,
              :allies,
              :enemies,
              :affiliation,
              :image

  def initialize(char_info)
    @name = char_info[:name]
    @allies = if char_info[:allies].length != 0 
        char_info[:allies] 
      else 
        'None' 
      end 
    @enemies = if char_info[:enemies].length != 0
        char_info[:enemies]
      else 
        'None' 
      end 
    @affliations = if char_info[:affiliation].length != 0 
        char_info[:affiliation]
      else 
        'None' 
      end
    @image = char_info[:photoUrl]
  end 
end 