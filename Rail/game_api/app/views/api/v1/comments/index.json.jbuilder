json.array!(@api_v1_comments) do |api_v1_comment|
  json.extract! api_v1_comment, :id
  json.url api_v1_comment_url(api_v1_comment, format: :json)
end
