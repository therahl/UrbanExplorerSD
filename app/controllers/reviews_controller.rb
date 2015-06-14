class ReviewsController < ApplicationController
  before_action :authenticate_user!

  def edit
    @business = Business.find([:business_id])
    @reviews = @business.reviews.find(params[:id])
  end

  def create
    @business = Business.find(params[:business_id])
    @review = @business.reviews.new(params.require(:review).permit(:title, :description, :rating))
    @review.user_id = current_user.id
    if @review.save
      redirect_to @business
    else
      render 'new'
    end
  end

  def new
    @business = Business.find(params[:business_id])
    @review = @business.reviews.new
  end

  def update
    @business = Business.find(params[:business_id])
    @review = @business.reviews.find(params[id])
    if @review.save
      redirect_to @business
    else
      render 'new'
    end
  end

  def destroy
    @business = Business.find(params[:business_id])
    @review = @business.reviews.find(params[:id])
    @review.destroy
    redirect_to @business
  end

  def show
  end
end
