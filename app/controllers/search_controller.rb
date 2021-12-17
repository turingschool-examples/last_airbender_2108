class SearchController < ApplicationController
  def index
    @members = MemberService.all_members(
      params[:nation].gsub("fire_nation", "Fire+Nation")
                      .gsub("air_nomads", "Air+Nomads")
                      .gsub("earth_kingdom", "Earth+Kingdom")
                      .gsub("water_tribes", "Water+Tribes")
                      )
  end

end
