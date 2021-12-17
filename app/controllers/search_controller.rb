class SearchController < ApplicationController
  def index
    if params[:nation] == 'fire_nation'
      @members = NationFacade.fire_nation_members
      @detailed_list = @members[0..24]
    elsif params[:nation] == 'air_nomads'
      @members = NationFacade.air_nomads_members
      @detailed_list = @members[0..24]
    elsif params[:nation] == 'earth_kingdom'
      @members = NationFacade.earth_kingdom_members
      @detailed_list = @members[0..24]
    elsif params[:nation] == 'water_tribes'
      @members = NationFacade.water_tribes_members
      @detailed_list = @members[0..24]
    end
  end
end