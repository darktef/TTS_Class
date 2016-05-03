class SongsController < ApplicationController
  def show
  	@songs = Song.where :track => params[:track]
  end
end
