json.array!(@superset_exercises) do |superset_exercise|
  json.extract! superset_exercise, :id, :superset_id, :exercise_id, :order, :tempo, :reps, :time, :rest, :sets, :time_per_set
  json.url superset_exercise_url(superset_exercise, format: :json)
end
