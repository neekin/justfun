json.array!(@articletypes) do |articletype|
  json.extract! articletype, :id, :name
  json.url articletype_url(articletype, format: :json)
end
