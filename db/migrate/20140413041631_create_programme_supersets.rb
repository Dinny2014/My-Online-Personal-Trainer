class CreateProgrammeSupersets < ActiveRecord::Migration
  def change
    create_table :programme_supersets do |t|
      t.references :programme, index: true
      t.references :superset, index: true

      t.timestamps
    end
  end
end
