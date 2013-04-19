class User < ActiveRecord::Base
  attr_accessible :email, :firstname, :lastname, :password, :password_confirmation, :kind, :zip

  validates_confirmation_of :password 
  validates_presence_of :password, :on => :create

end
