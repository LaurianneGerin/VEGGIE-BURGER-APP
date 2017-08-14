class PagesController < ApplicationController
  def home
    @restaurants = Restaurant.all
    @sample = @restaurants.sample(6)
  end

  def about
  end

  def contact
  end
end
