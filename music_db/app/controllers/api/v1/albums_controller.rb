class Api::V1::AlbumsController < ApplicationController
  def index
  end

  def show
  	@api_v1_albums = Album.where :title => params[:album_name]
  end
end
