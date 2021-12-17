class SearchController < ApplicationController
  def index
    @nation = params[:nation].split(/ |\_/).map(&:capitalize).join(" ")
    @total = CharacterFacade.find_nation.count
    @members = CharacterFacade.find_nation.first(25)
  end
end
