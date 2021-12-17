class Character
  attr_reader :allies,
              :enimies,
              :name,
              :photo

  def initialize(data)
    @allies = data[:allies]
    @enimies = data[:enimies]
    @name = data[:name]
    @photo = data[:photoUrl]
  end
end