class Buyer < User
  attr_accessible :user_id, :wantedad_id
  has_many :wanted_ads
  has_many :offers, :through => :wanted_ads
end
