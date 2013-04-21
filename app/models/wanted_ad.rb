class WantedAd < ActiveRecord::Base
  attr_accessible :user_id, :budget_from, :budget_to, :car_make, :car_model, :car_type, :color, :description, :desired_mpg, :mileage_from, :mileage_to, :year_from, :year_to
  belongs_to :user
  has_many :offers

end
