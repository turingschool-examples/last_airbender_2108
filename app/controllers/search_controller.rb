class SearchController < ApplicationController
  def index
    @characters = CharacterFacade.get_fire
  end
end