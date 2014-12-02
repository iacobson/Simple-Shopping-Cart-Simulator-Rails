class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.integer :quantity
      t.references :product, index: true

      t.timestamps
    end
  end
end
