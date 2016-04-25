json.array!(@imdbs) do |imdb|
  json.extract! imdb, :id, :title, :actor_id, :genre_id
  json.url imdb_url(imdb, format: :json)
end
