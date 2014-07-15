class AddColumnsToProgramme < ActiveRecord::Migration
  def change
    add_column :programmes, :duration, :string
    add_column :programmes, :sex, :string
    add_column :programmes, :total_time, :integer
  end
end
