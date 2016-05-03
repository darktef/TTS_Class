json.array!(@api_v1_albums) do |api_v1_album|
  json.extract! api_v1_album, :id
  json.url api_v1_album_url(api_v1_album, format: :json)
end
