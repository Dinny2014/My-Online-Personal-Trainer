class CreateBodyPartExercises < ActiveRecord::Migration
  def change
    create_table :body_part_exercises do |t|
      t.references :body_part, index: true
      t.references :exercise, index: true

      t.timestamps
    end
  end
end
