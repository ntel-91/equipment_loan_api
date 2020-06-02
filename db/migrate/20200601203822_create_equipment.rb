class CreateEquipment < ActiveRecord::Migration[6.0]
  def change
    create_table :equipment do |t|
      t.string :name, limit: 100, null: false
      t.integer :weight
      t.string :img
      t.float :price, precision: 5, scale: 2, null: false
      t.integer :quantity

      t.timestamps
    end
  end
end
