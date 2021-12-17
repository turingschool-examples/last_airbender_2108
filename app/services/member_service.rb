class MemberService

  def self.member_information(nation_name)
    conn = Faraday.new('https://last-airbender-api.herokuapp.com')
    response = conn.get('/api/v1/characters') do |f|
      f.params['affiliation'] = nation_name
      f.params['perPage'] = 25
    end
    json = JSON.parse(response.body, symbolize_names: true)
  end
end
