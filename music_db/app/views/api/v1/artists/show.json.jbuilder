json.array!(@api_v1_artist) do |api_v1_artist|
  json.extract! api_v1_artist, :id, :name, :albums
  json.url api_v1_artist_url(api_v1_artist.name, format: :json)
end

