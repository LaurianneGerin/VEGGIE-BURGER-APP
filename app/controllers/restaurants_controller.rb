class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    if params[:city].nil?
        @restaurants = Event.where.not(latitude: nil, longitude: nil)
      else
        @city = params[:city]
        @restaurants = Restaurant.select {|r| r[:city] == @city }
        @hash = Gmaps4rails.build_markers(@restaurants) do |restaurant, marker|
          marker.lat restaurant.latitude
          marker.lng restaurant.longitude
          # marker.infowindow render_to_string(partial: "/restaurants/map_box", locals: { restaurant: restaurant })
        end
    end

  end

  def show

    @restaurant = Restaurant.find(params[:id])
    @restaurant_coordinates = { lat: @restaurant.latitude, lng: @restaurant.longitude }
    @hash = Gmaps4rails.build_markers(@restaurant) do |restaurant, marker|
      marker.lat restaurant.latitude
      marker.lng restaurant.longitude
    end
  end
end
