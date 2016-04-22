json.array!(@profiles) do |profile|
  json.extract! profile, :id, :name, :address, :customer_id
  json.url profile_url(profile, format: :json)
end
