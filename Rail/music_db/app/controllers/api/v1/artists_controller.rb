class Api::V1::ArtistsController < ApplicationController
  def list
  end

  def index
  	@api_v1_artists = Artist.all
  end

  def show
  	@api_v1_artist = Artist.find(params[:id])
  end
end
