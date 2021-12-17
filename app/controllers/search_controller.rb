class SearchController < ApplicationController
  def index
    @characters = SearchFacade.fire_nation
  end
end
