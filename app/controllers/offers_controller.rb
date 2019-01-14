class OffersController < ApplicationController

  def index
    @offers = Offer.all
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(ad_params)
    if @offer.save
      redirect_to @offer
    else
      render 'new'
    end
  end

  def edit
  end





  private

  def offer_params
    params.require(:offer).permit(:title, :area, :address, :price, :phone, :description)
  end

end
