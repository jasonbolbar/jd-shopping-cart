class RemoveCustomerIdIsCheckedFromCarts < ActiveRecord::Migration
  def up
    remove_column :carts, :is_checked
    remove_column :carts, :customer_id
  end

  def down
    add_column :carts, :is_checked, :boolean
    add_column :carts, :customer_id, :integer
  end
end
