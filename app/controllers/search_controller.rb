class SearchController < ApplicationController

  def index
    search_nation = params['nation'].gsub('_', '+')

    @view_nation = params['nation'].gsub('_', ' ').titleize

    conn = Faraday.new(url: 'https://last-airbender-api.herokuapp.com')
    response = conn.get("/api/v1/characters?affiliation=#{search_nation}")
    json = JSON.parse(response.body, symbolize_names: true)
    #require "pry"; binding.pry
    @members = json.map do |attribute|
      Member.new(attribute)
    end
  end
end
