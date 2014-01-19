class AddCartIdToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :cart_id, :integer
  end
end
