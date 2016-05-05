class ArtistsController < ApplicationController
  def index
  	@artists = Artist.all
  end

  def show
  	@artist = Artist.where :name => params[:artist_name]
  end
end
