json.array!(@api_v1_songs) do |api_v1_song|
  json.extract! api_v1_song, :id, :album_id, :track, :title
  json.url api_v1_song_url(api_v1_song, format: :json)
end
