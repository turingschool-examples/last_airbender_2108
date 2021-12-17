class SearchController < ApplicationController
  def index
    @members = CharacterFacade.character_info(params[:nation])
  end
end
