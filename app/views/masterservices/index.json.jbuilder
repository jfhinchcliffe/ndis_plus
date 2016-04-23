json.array!(@masterservices) do |masterservice|
  json.extract! masterservice, :id, :name, :description
  json.url masterservice_url(masterservice, format: :json)
end
