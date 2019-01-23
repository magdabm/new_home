class OffersController < ApplicationController

  before_action :authenticate_user!, except: [:show, :index]
  before_action :find_offer, only: [:show, :edit, :update, :destroy]
  before_action :authorize_offer, only: [:edit, :update, :destroy]

  def index
    @offers = Offer.all
    # @offers = @offers.includes(:user).order(id: :desc).page(params[:page]).per(6)
    @offers = @offers.where(status: params[:status]) if params[:status].present?
    # or @offers = @offers.select { |o| o.status.include? params[:status] } if params[:status].present?
    @offers = @offers.where(district_id: params[:district]) if params[:district].present?
    @best_offers = @offers.best_factor
    if @offers.count == 0
      flash[:alert] = "Sorry, we don't have offers that meet your criteria..."
    end
  end

  def show
    @question = Question.new
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
  end

  def update
    if @offer.update(offer_params)
      redirect_to @offer
      flash[:notice] = "Advertisement has been succesfully updated in our database."
    end
  end

  def destroy
    @offer.destroy
    redirect_to offers_path
    flash[:notice] = "Advertisement has been succesfully deleted from our database."
  end


  private

  def offer_params
    params.require(:offer).permit(:title, :area, :address, :price, :phone, :description, :status, :district_id, {photos: []}, room_ids: [])
  end

  def find_offer
    @offer = Offer.find(params[:id])
  end

  def authorize_offer
    if @offer.user != current_user && !current_user&.admin?
      redirect_to offers_path
      flash[:alert] = "You are not allowed to be here."
      false
    else
      true
    end
  end

end
