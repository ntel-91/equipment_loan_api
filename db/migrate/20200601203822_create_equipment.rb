class CreateEquipment < ActiveRecord::Migration[6.0]
  def change
    create_table :equipment do |t|
      t.string :name
      t.integer :weight
      t.string :img
      t.float :price
      t.integer :quantity

      t.timestamps
    end
  end
end
