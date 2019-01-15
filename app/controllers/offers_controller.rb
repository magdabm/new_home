class OffersController < ApplicationController

  before_action :authenticate_user!, except: [:show, :index]

  def index
    @offers = Offer.all
  end

  def show
    @offer = Offer.find(params[:id])
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user if current_user
    if @offer.save
      redirect_to @offer
      flash[:notice] = "Advertisement has been succesfully added to our database."
    else
      render 'new'
    end
  end

  def edit
    @offer = Offer.find(params[:id])
    if @offer.user != current_user && !current_user&.admin?
      redirect_to offers_path
      flash[:alert] = "You are not allowed to be here."
   end
  end

  def update
    @offer = Offer.find(params[:id])
    if @offer.user != current_user && !current_user&.admin?
      redirect_to offers_path
      flash[:alert] = "You are not allowed to be here."
    else
      @offer.update(offer_params)
      redirect_to @offer
      flash[:notice] = "Advertisement has been succesfully updated in our database."
    end
  end

  def destroy
    @offer = Offer.find(params[:id])
    if @offer.user != current_user && !current_user&.admin?
      redirect_to offers_path
      flash[:alert] = "You are not allowed to be here."
      false
    else
      @offer.destroy
      redirect_to offers_path
      flash[:notice] = "Advertisement has been succesfully deleted from our database."
    end
  end


  private

  def offer_params
    params.require(:offer).permit(:title, :area, :address, :price, :phone, :description)
  end

end
