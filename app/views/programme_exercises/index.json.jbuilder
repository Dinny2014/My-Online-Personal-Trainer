json.array!(@programme_exercises) do |programme_exercise|
  json.extract! programme_exercise, :id, :programme_id, :exercise_id, :exercise_id, :order, :time, :rest, :sets, :time_per_set
  json.url programme_exercise_url(programme_exercise, format: :json)
end
