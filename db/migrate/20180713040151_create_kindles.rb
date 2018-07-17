class CreateKindles < ActiveRecord::Migration[5.1]
  def change
    create_table :kindles do |t|
      t.string :inventory_id
      t.string :status

      t.timestamps
    end
  end
end
