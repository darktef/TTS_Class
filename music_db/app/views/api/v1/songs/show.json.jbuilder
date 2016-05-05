json.array!(@api_v1_songs) do |api_v1_song|
  json.extract! api_v1_song, :id, :track, :title, :created_at, :updated_at
  json.url api_v1_song_url(api_v1_song.album.artist.name, api_v1_song.album.title, api_v1_song.track, format: :json)
end