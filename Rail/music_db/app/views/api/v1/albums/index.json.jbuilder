json.array!(@api_v1_albums) do |api_v1_album|
  json.extract! api_v1_album, :id, :artist_id, :title, :cover_image
  json.url api_v1_album_url(api_v1_album, format: :json)
end
