json.array!(@providerprofiles) do |providerprofile|
  json.extract! providerprofile, :id, :name, :description, :address, :phone, :email, :provider_id
  json.url providerprofile_url(providerprofile, format: :json)
end
