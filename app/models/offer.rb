class Offer < ActiveRecord::Base
	attr_accessible :user_id, :wanted_ad_id, :estvalue, :image1, :offerprice, :ownercartype, :ownerdesc, :ownermake, :ownermileage, :ownermodel, :owneryear
	belongs_to :user
	belongs_to :wanted_ad
	has_one :car

	# def self.carsearch
	# 	@car = []

	# 	offer = Offer.find(params[:id])
	# 	ownermake = offer.ownermake
	# 	ownermodel = offer.ownermodel
	# 	owneryear = offer.owneryear 


	# 	carinfo = HTTParty.get("http://api.edmunds.com/v1/api/vehicle/#{ownermake}/#{ownermodel}/#{owneryear}?api_key=qd4n48eua7r2e59hbdte5xd6&fmt=json")
	# 	carinfo["modelYearHolder"].each do |p|
	# 		c = Car.new
	# 		c.make = p["makeName"]
	# 		#c.submodels = p["subModels"]


	# 		#return c.make
	# 		return carinfo
	# 	end 
end