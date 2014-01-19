class AddTaxToProducts < ActiveRecord::Migration
  def change
    add_column :products, :tax, :float
  end
end
