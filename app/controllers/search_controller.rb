class SearchController < ApplicationController
  def index
    @characters = CharactersFacade.characters_search(params[:nation])
    require "pry"; binding.pry
  end
end
