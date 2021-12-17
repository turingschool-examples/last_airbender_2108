class SearchController < ApplicationController
  def index
    @members = {
      nation: params[:nation].sub('_', ' ').titleize,
      members: CharacterFacade.first_25_characters(params[:nation]),
      total_count: CharacterFacade.all_characters_count(params[:nation])
    }
  end
end
