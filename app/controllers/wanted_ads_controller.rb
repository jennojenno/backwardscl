class WantedAdsController < ApplicationController
  # GET /wanted_ads
  # GET /wanted_ads.json
  def index
    @wanted_ads = WantedAd.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @wanted_ads }
    end
  end

  # GET /wanted_ads/1
  # GET /wanted_ads/1.json
  def show
    @wanted_ad = WantedAd.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @wanted_ad }
    end
  end

  # GET /wanted_ads/new
  # GET /wanted_ads/new.json
  def new
    @wanted_ad = WantedAd.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @wanted_ad }
    end
  end

  # GET /wanted_ads/1/edit
  def edit
    @wanted_ad = WantedAd.find(params[:id])
  end

  # POST /wanted_ads
  # POST /wanted_ads.json
  def create
    @wanted_ad = WantedAd.new(params[:wanted_ad])

    respond_to do |format|
      if @wanted_ad.save
        format.html { redirect_to @wanted_ad, notice: 'Wanted ad was successfully created.' }
        format.json { render json: @wanted_ad, status: :created, location: @wanted_ad }
      else
        format.html { render action: "new" }
        format.json { render json: @wanted_ad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /wanted_ads/1
  # PUT /wanted_ads/1.json
  def update
    @wanted_ad = WantedAd.find(params[:id])

    respond_to do |format|
      if @wanted_ad.update_attributes(params[:wanted_ad])
        format.html { redirect_to @wanted_ad, notice: 'Wanted ad was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @wanted_ad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wanted_ads/1
  # DELETE /wanted_ads/1.json
  def destroy
    @wanted_ad = WantedAd.find(params[:id])
    @wanted_ad.destroy

    respond_to do |format|
      format.html { redirect_to wanted_ads_url }
      format.json { head :no_content }
    end
  end
end
