json.array!(@supersets) do |superset|
  json.extract! superset, :id, :name, :description, :sets
  json.url superset_url(superset, format: :json)
end
