class CreatePractices < ActiveRecord::Migration
  def change
    create_table :practices do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.references :instrument, index: true
      t.references :user, index: true
      t.string :notes

      t.timestamps
    end
  end
end
