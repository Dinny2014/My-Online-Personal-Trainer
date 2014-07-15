json.array!(@programme_types) do |programme_type|
  json.extract! programme_type, :id, :name, :description
  json.url programme_type_url(programme_type, format: :json)
end
