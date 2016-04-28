class Api::V1::AlbumsController < ApplicationController
  def list
  	
  end

  def show
  	@api_v1_album = Album.find(params[:id])
  end

  def index
  	@api_v1_albums = Album.all
  end
end
