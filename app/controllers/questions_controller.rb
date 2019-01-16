class QuestionsController < ApplicationController

  before_action :find_offer
  before_action :authenticate_user!

  def create
     @question = Question.new(question_params)
     @question.offer = @offer
     @question.user = current_user if current_user
     if @question.save
        flash[:notice] = "Your question has been added to the offer."
        redirect_to offer_path(@offer)
     else
        render 'offers/show'
     end
  end

  def destroy
     @question = Question.find(params[:id])
     return unless authorize_question
     @question.destroy
     flash[:notice] = "Your question has been deleted."
     redirect_to offer_path(@offer)
  end

  def edit
     @question = Question.find(params[:id])
     return unless authorize_question
  end

  def update
     @question = Question.find(params[:id])
     return unless authorize_question

     if @question.update(question_params)
        flash[:notice] = "Your question has been updated."
        redirect_to offer_path(@offer)
     else
        render 'edit'
     end
  end


  private

  def authorize_question
     if @question.user != current_user && !current_user&.admin?
        flash[:alert] = "You are not allowed to be here."
        redirect_to offers_path
        false
     else
        true
     end
  end

  def find_offer
     @offer = Offer.find(params[:offer_id])
  end

  def question_params
     params.require(:question).permit(:content, :nick)
  end

end
