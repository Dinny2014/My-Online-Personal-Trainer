class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :name
      t.string :url
      t.references :exercise, index: true

      t.timestamps
    end
  end
end
