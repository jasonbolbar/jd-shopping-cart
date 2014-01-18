class Cart < ActiveRecord::Base
  attr_accessible :customer_id, :is_checked, :sale_taxes, :total, :total_discount
  belongs_to :customer
  has_many :cart_products, dependent: :destroy
  has_many :products, through: :cart_products

  accepts_nested_attributes_for :cart_products, allow_destroy: true
end
