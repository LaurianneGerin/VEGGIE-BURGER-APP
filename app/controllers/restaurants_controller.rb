class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    if params[:city].nil?
        @restaurants = Event.where.not(latitude: nil, longitude: nil)
      else
        @city = params[:city]
        @restaurants = Restaurant.select {|r| r[:city] == @city }
    end

    @hash = Gmaps4rails.build_markers(@restaurants) do |restaurant, marker|
      marker.lat restaurant.latitude
      marker.lng restaurant.longitude
      # marker.infowindow render_to_string(partial: "/restaurants/map_box", locals: { restaurant: restaurant })
    end
  end

  def show
    # @restaurant = RESTAURANTS[params[:id].to_i]
    @restaurant = Restaurant.find(params[:id])
    @restaurant_coordinates = { lat: @restaurant.latitude, lng: @restaurant.longitude }
  end
end
