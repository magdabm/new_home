class OffersController < ApplicationController

  before_action :authenticate_user!, except: [:show, :index]
  before_action :find_offer, only: [:show, :edit, :update, :destroy]
  before_action :authorize_offer, only: [:edit, :update, :destroy]

  def index
    @offers = Offer.all
    @offers = @offers.includes(:user).order(id: :desc).page(params[:page]).per(6)

    @offers = @offers.where(status: params[:status]) if params[:status].present?
    # or @offers = @offers.select { |o| o.status.include? params[:status] } if params[:status].present?
    @offers = @offers.where(district_id: params[:district]) if params[:district].present?
    @best_sale = Offer.all.best_sale
    @best_rent = Offer.all.best_rent
  end

  def show
    @question = Question.new

    respond_to do |format|
      format.html do
        @offer.increment!(:views_count)
        render
      end
      format.json do
        render json: {
          id: @offer.id,
          title: @offer.title,
          views_count: @offer.views_count,
        }
      end
    end
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user if current_user
    @offer.factor = @offer.price_to_area_factor
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
      @offer.factor = @offer.price_to_area_factor
      @offer.save
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
    params.require(:offer).permit(:title, :area, :price, :phone, :description, :status, :district_id, :factor, :photo, room_ids: [])
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
