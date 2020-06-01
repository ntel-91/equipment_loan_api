class CreateGyms < ActiveRecord::Migration[6.0]
  def change
    create_table :gyms do |t|
      t.string :name
      t.string :account_name
      t.string :password_digest
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.string :img

      t.timestamps
    end
  end
end
