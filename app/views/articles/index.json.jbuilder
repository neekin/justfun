json.array!(@articles) do |article|
  json.extract! article, :id, :content, :articletype_id, :subject, :title, :user_id
  json.url article_url(article, format: :json)
end
