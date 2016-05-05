class RestaurantController < ApplicationController

  def index
  	@restaurants = Restaurant.all
  end
end
