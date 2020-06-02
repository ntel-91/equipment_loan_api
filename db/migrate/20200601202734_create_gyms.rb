class CreateGyms < ActiveRecord::Migration[6.0]
  def change
    create_table :gyms do |t|
      t.string :name, limit: 100, null: false
      t.string :account_name, limit: 100, null: false
      t.string :password_digest, null: false
      t.string :address, null: false 
      t.string :city, null: false
      t.string :state, null: false
      t.integer :zip, null: false
      t.string :img

      t.timestamps
    end
  end
end
