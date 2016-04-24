json.array!(@providerservices) do |providerservice|
  json.extract! providerservice, :id, :name, :description, :providerprofile_id
  json.url providerservice_url(providerservice, format: :json)
end
