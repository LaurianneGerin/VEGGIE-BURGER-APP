class BurgerController < ApplicationController
  def index
    @burgers = Burger.all
    # @burgers = Burger.find(params[:restaurant_id])
  end
end
