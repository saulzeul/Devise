class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :name
      t.text :description
      t.string :token

      t.timestamps
    end
    add_index :cars, :token, unique: true
  end
end
