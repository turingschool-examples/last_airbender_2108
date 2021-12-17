class AirbenderFacade
  def self.first_25(nation)
    nation['_'] = '+'
    content = LastAirbenderService.conn.get("/api/v1/characters?affiliation=#{nation}&perPage=25&page=1")
    members = LastAirbenderService.parse_response(content)
    members.map do |member|
      Member.new(member)
    end
  end

  def self.total_members(nation)
    content = LastAirbenderService.conn.get("/api/v1/characters?affiliation=#{nation}&perPage=500&page=1")
    members = LastAirbenderService.parse_response(content)
    total_members = members.length
  end
end
