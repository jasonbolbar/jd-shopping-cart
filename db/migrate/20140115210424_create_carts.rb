class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.integer :customer_id
      t.boolean :is_checked
      t.float :total_discount
      t.float :sale_taxes
      t.float :total
    end
    add_index :carts, :customer_id
  end
end
