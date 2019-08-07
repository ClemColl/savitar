class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.string :name
      t.integer :budget
      t.string :duration
      t.string :rh
      t.references :answer, foreign_key: true

      t.timestamps
    end
  end
end
