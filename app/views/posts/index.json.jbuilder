json.array!(@posts) do |post|
  json.extract! post, :id, :time, :body
  json.url post_url(post, format: :json)
end
