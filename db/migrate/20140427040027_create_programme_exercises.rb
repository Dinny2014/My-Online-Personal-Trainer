class CreateProgrammeExercises < ActiveRecord::Migration
  def change
    create_table :programme_exercises do |t|
      t.references :programme, index: true
      t.references :exercise, index: true
      t.references :exercise, index: true
      t.integer :order
      t.integer :time
      t.integer :rest
      t.integer :sets
      t.integer :time_per_set

      t.timestamps
    end
  end
end
