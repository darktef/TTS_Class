class Api::V1::SongsController < ApplicationController
  def index
  end

  def show
  	@api_v1_songs = Song.where :track => params[:track]
  end

end
