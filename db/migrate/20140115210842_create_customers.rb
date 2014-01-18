class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :names
      t.string :last_name
      t.string :phone
      t.string :country
      t.string :card_number
      t.string :card_code
    end
  end
end
