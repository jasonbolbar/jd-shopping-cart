class Product < ActiveRecord::Base
  attr_accessible :category, :discount, :image_url, :name, :price, :tax
  belongs_to :category
  has_many :cart_products
  has_many :carts, through: :cart_products


end
