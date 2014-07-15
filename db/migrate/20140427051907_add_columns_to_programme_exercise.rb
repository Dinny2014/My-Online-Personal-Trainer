class AddColumnsToProgrammeExercise < ActiveRecord::Migration
  def change
    add_column :programme_exercises, :reps, :integer
    add_column :programme_exercises, :tempo, :string
  end
end
