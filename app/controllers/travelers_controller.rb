require 'pry'
class TravelersController < ApplicationController
  def index
    @travelers = Traveler.all
  end

  def show
    @traveler = Traveler.find(params[:id])
    @traveler_favorite_countries
  end 
end
