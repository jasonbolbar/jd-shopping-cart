class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :image_url
      t.float :price
      t.float :discount
      t.integer :category_id

      t.timestamps
    end
    add_index :products, :name
    add_index :products,:category_id

  end
end
