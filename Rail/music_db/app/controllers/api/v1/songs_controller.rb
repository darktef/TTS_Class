class Api::V1::SongsController < ApplicationController

  def show
  	@api_v1_song = Song.find params[:id]
  end

  def index
  	@api_v1_songs = Song.all
  end
end
