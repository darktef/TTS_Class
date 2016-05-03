class AlbumsController < ApplicationController
  def show
  	@albums = Album.where :title => params[:album_name]
  	
  end
end
