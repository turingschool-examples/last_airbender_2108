class SearchController < ApplicationController
  def index
    @characters = SearchFacade.search_results(params[:nation])
    @first_twenty_five = @characters[0..24]
  end
end