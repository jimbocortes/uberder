class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :type
      t.string :city
      t.string :address
      t.decimal :price
      t.integer :bathrooms
      t.integer :bedrooms
      t.text :description

      t.timestamps null: false
    end
  end
end
