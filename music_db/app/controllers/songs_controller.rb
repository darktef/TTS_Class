class SongsController < ApplicationController
  def show
  	@songs = Song.where :track => params[:track]
  end

  def list
  	@songs = Song.all
  end
end
