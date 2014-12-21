class RemovePracticeIdFromInstruments < ActiveRecord::Migration
  def change
    remove_column :instruments, :practice_id
  end
end
