json.array!(@api_v1_songs) do |api_v1_song|
  json.extract! api_v1_song, :id
  json.url api_v1_song_url(api_v1_song, format: :json)
end
