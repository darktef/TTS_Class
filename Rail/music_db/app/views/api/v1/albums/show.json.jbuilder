json.array!(@api_v1_albums) do |album|
  json.extract! album, :id, :title, :cover_image, 
  :artist, 
  :songs, 
  :created_at, :updated_at
  json.url api_v1_album_url(album.artist.name, album.title, format: :json)
end

