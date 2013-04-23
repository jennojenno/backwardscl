class OffersController < ApplicationController

  def index
    #@offers = Offer.all
    @wanted_ad = WantedAd.find(params[:wanted_ad_id])
    @offers = Offer.where(:wanted_ad_id => params[:wanted_ad_id])


    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @offers }
    end
  end


  def show

    @offer = Offer.find(params[:id])
    @wanted_ad = WantedAd.find(params[:wanted_ad_id])

    ownermake = @offer.ownermake
    ownermodel = @offer.ownermodel
    owneryear = @offer.owneryear 


    @carinfo = HTTParty.get("http://api.edmunds.com/v1/api/vehicle/#{ownermake}/#{ownermodel}/#{owneryear}?api_key=qd4n48eua7r2e59hbdte5xd6&fmt=json")
    @carinfo["modelYearHolder"].each do |p|
      @c = Car.new
      @c.make = p["makeId"]
      #@c.styles = p["styles"]["name"]
      #c.submodels = p["subModels"]
    end 


    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @offer }
    end
  end



  def new
    @offer = Offer.new(:wanted_ad_id => params[:wanted_ad_id])
    @wanted_ad = WantedAd.find(params[:wanted_ad_id])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @offer }
    end
  end

  def edit
    @offer = Offer.find(params[:id])
    @wanted_ad = WantedAd.find(params[:wanted_ad_id])
  end


  def create
    @offer = Offer.new(params[:offer])
    @wanted_ad = WantedAd.find(params[:wanted_ad_id])

    respond_to do |format|
      if @offer.save
        format.html { redirect_to @offer, notice: 'Offer was successfully created.' }
        format.json { render json: @offer, status: :created, location: @offer }
      else
        format.html { render action: "new" }
        format.json { render json: @offer.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    @offer = Offer.find(params[:id])
    @wanted_ad = WantedAd.find(params[:wanted_ad_id])

    respond_to do |format|
      if @offer.update_attributes(params[:offer])
        format.html { redirect_to @offer, notice: 'Offer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @offer.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @offer = Offer.find(params[:id])
    @offer.destroy

    respond_to do |format|
      format.html { redirect_to offers_url }
      format.json { head :no_content }
    end
  end
end
