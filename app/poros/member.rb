class Member
  attr_reader :_id,
              :name,
              :affiliation,
              :allies,
              :enemies,
              :photoUrl
  def initialize(data)
    @_id = data[:_id]
    @name = data[:name]
    @affiliation = data[:affiliation]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @photoUrl = data[:photoUrl]
  end
end