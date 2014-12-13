class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :practices, :start, :start_time
    rename_column :practices, :end, :end_time
  end
end
