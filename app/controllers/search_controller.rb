class SearchController < ApplicationController

  def index
    @characters = TlaFacade.affiliated_characters(params[:nation])
  end
end