class SearchController < ApplicationController
  def index
    if params[:nation] == 'fire_nation'
      @members = NationFacade.fire_nation_members
      @detailed_list = @members[0..24]
    end
  end
end