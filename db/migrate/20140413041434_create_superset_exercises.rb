class CreateSupersetExercises < ActiveRecord::Migration
  def change
    create_table :superset_exercises do |t|
      t.references :superset, index: true
      t.references :exercise, index: true
      t.integer :order
      t.string :tempo
      t.integer :reps
      t.integer :time
      t.integer :rest
      t.integer :sets
      t.integer :time_per_set

      t.timestamps
    end
  end
end
