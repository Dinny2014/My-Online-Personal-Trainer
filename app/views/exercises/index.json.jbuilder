json.array!(@exercises) do |exercise|
  json.extract! exercise, :id, :name, :description, :exercise_type
  json.url exercise_url(exercise, format: :json)
end
