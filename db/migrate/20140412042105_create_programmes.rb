class CreateProgrammes < ActiveRecord::Migration
  def change
    create_table :programmes do |t|
      t.string :name
      t.text :description
      t.references :programme_type, index: true

      t.timestamps
    end
  end
end
