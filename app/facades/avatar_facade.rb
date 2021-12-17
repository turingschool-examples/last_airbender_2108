class AvatarFacade
  def self.nation_search(search)
    json = AvatarService.nation_search(search)
    json.map do |data|
      Character.new(data)
    end
  end
end
