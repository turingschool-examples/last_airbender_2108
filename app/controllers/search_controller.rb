class SearchController < ApplicationController

  def index

    @view_nation = params['nation'].gsub('_', ' ').titleize

    @members = MemberService.new.nation_members(params['nation'])

  end
end
