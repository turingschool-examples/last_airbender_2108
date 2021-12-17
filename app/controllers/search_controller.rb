class SearchController < ApplicationController
  def index
    @nation = params[:nation].split(/ |\_/).map(&:capitalize).join(" ")
    @total = CharacterFacade.count_characters
  end
end
