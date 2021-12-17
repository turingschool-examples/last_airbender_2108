class SearchController < ApplicationController

  def index
    nation = params[:nation].gsub("_", "+")

    response = Faraday.get("https://last-airbender-api.herokuapp.com/api/v1/characters?affiliation=#{nation}")

    require "pry"; binding.pry
    @members = JSON.parse(response.body, symbolize_names: true)
  end
end
