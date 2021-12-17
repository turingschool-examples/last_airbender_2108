class SearchController < ApplicationController
  def search
    conn = Faraday.new(url: "https://last-airbender-api.herokuapp.com/api/v1/")
    response = conn.get("characters")
    data = JSON.parse(response.body, symbolize_names: true)
    found_characters = data.find_all do |character|
      require "pry"; binding.pry
       character[:affiliation].include?(params[:search])
    end
    @character_count = found_characters.count
    render "welcome/index"
  end
end
