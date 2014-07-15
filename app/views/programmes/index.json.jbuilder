json.array!(@programmes) do |programme|
  json.extract! programme, :id, :name, :description, :programme_type_id
  json.url programme_url(programme, format: :json)
end
