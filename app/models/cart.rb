class Cart < ActiveRecord::Base

  attr_accessor :subtotal

  attr_accessible :customer_id, :is_checked, :sale_taxes, :total, :total_discount, :product_ids, :customer_attributes
  after_initialize :calculate_amounts
  has_one :customer, dependent: :destroy
  has_many :cart_products, dependent: :destroy
  has_many :products, through: :cart_products
  accepts_nested_attributes_for :customer

  def calculate_amounts
    self.total_discount,self.sale_taxes,self.subtotal = 0,0,0
    products.each do |product|
      self.total_discount += product.discount.to_f
      self.sale_taxes += product.price * (product.tax.to_f/100)
      self.subtotal += product.price
    end
    self.total = subtotal + sale_taxes - total_discount
  end

  def discount_message
    return "Awesome! You have added a product with discount! :D" if products.any?{|p|p.discount}
  end
end
