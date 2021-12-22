class MemberService

  def nation_members(search_nation)

    search_nation.gsub!('_', ' ')


    conn = Faraday.new(url: 'https://last-airbender-api.herokuapp.com')
    response = conn.get("/api/v1/characters") do |f|
      f.params['affiliation'] = search_nation
      f.params['perPage'] = 20
    end

    json = JSON.parse(response.body, symbolize_names: true)

    json.map do |data|
      Member.new(data)
    end
  end
end
