require "pry"

class Traveler < ApplicationRecord
  has_many :vacations
  has_many :countries, through: :vacations

  def favorite_countries
     traveler_fav_vacay = vacations.filter{|vacay| vacay.favorite == true}
     traveler_fav_vacay.map {|vacay| vacay.country}     
  end
  
end
