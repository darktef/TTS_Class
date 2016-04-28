json.array!(@api_v1_artists) do |api_v1_artist|
  json.extract! api_v1_artist, :id, :name
  json.url api_v1_artist_url(api_v1_artist, format: :json)
end
