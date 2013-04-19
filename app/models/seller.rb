class Seller < Buyer
  attr_accessible :offer_id, :user_id
  has_many :offers
  has_many :buyers, :through => :offers
end
