class SearchController < ApplicationController
  def index
    @characters = SearchFacade.fire_nation
    binding.pry
  end
end
