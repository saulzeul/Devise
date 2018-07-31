class CreateTires < ActiveRecord::Migration[5.1]
  def change
    create_table :tires do |t|
      t.string :name
      t.text :observations
      t.string :manufactured
      t.float :stock

      t.timestamps
    end
  end
end
