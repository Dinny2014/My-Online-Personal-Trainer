class CreateSupersets < ActiveRecord::Migration
  def change
    create_table :supersets do |t|
      t.string :name
      t.text :description
      t.integer :sets

      t.timestamps
    end
  end
end
