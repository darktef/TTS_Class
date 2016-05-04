class HomeController < ApplicationController
  def index
  	@destinations = Destination.all
  end
end
