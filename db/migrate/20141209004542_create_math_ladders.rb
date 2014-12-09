class CreateMathLadders < ActiveRecord::Migration
  def change
    create_table :math_ladders do |t|
      t.integer :number
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
