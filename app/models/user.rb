class User < ActiveRecord::Base
  attr_accessible :email, :firstname, :lastname, :password, :password_confirmation, :kind, :zip
  has_many :wanted_ads
  has_many :offers

  has_secure_password

  validates_confirmation_of :password 
  validates_presence_of :password, :on => :create

  validates_presence_of :email

  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token 

  private

  	def create_remember_token
  		self.remember_token = SecureRandom.urlsafe_base64
  	end 
end
