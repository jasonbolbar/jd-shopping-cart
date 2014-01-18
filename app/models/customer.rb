class Customer < ActiveRecord::Base
  attr_accessible :card_code, :card_number, :country, :last_name, :names, :phone
  has_many :carts
end
