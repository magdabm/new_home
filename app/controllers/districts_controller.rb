class DistrictsController < ApplicationController

  def index
    @districts = District.all
  end

  def show
    @district = District.find(params[:id])
    @offers = Offer.all
    @d_offers = @offers.where(district_id: params[:id])
  end

end
