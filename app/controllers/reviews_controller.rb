class ReviewsController < ApplicationController
  before_action :authenticate_user!

  def edit
  end

  def create
    @business = Business.find(params[:id])
    @user = current_user
    @review = Review.new(params.require(:review).permit(:title, :description))
    @review.save
  end

  def new
    @business = Business.find(params[:business_id])
    @user = current_user
    @review = Review.new
  end

  def update
  end

  def destroy
  end

  def show
  end
end
