json.array!(@posts) do |post|
  json.extract! post, :title, :content, :other
  json.url post_url(post, format: :json)
end
