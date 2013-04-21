class Car < ActiveRecord::Base
  attr_accessible :make, :model, :year
  belongs_to :offer 
end
