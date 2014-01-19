class Customer < ActiveRecord::Base
  attr_accessible :card_code, :card_number, :country, :last_name, :names, :phone
  validates :card_code, :card_number, :country, :last_name, :names, :phone, presence: true
  belongs_to :cart

  def to_s
    "#{names} #{last_name}"
  end
end
