class CreateProgrammerExercises < ActiveRecord::Migration
  def change
    create_table :programmer_exercises do |t|
      t.references :programme, index: true
      t.references :exercise, index: true

      t.timestamps
    end
  end
end
