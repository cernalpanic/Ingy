class DropTimeColumns < ActiveRecord::Migration
  def change
    remove_column :practices, :start_time
    remove_column :practices, :end_time
    add_column :practices, :seconds_elapsed, :integer
  end
end
