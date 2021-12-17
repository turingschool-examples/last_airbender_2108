class SearchController < ApplicationController
  def index 
    @characters = CharacterFacade.get_all_characters(get_nation_name)
    binding.pry
  end 

  private 

  def get_nation_name
    split_name = params[:nation].split('_')
    first = split_name[0].to_s 
    second = split_name[1].to_s 
    first.capitalize! + '+' + second.capitalize!
  end 
end 