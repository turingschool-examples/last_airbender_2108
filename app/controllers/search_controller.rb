class SearchController < ApplicationController
  def index
    # conn = Faraday.new('https://last-airbender-api.herokuapp.com/')
    # response = conn.get("api/v1/characters?affiliation=#{params[:nation].sub('_', '+')}&perPage=25")
    # response2 = conn.get("api/v1/characters?affiliation=#{params[:nation].sub('_', '+')}&perPage=9999")
    @members = CharacterFacade.first_25_characters(params[:nation])
    @total_members_count = CharacterFacade.all_characters_count(params[:nation])
  end
end
