class RestaurantsController < ApplicationController
  RESTAURANTS = [
    { name: "Dishoom", address: "Shoreditch, London", category: "indian" },
    { name: "Sushi Samba", address: "City, London", category: "japanese" }
  ]
  def index
    @category = params[:food_type]
    @restaurants = RESTAURANTS.select {|r| r[:category] == @category }
  end
end
