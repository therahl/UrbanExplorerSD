class BusinessesController < ApplicationController
  def index
    # @businesses = Business.all
  end

  def show
    @business = Business.find(params[:id])
  end

  def create
    @business = Business.new(business_params)
    @business.save
    redirect_to @business
  end

  def new
    @business = Business.new
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def business_params
    params.require(:business).permit(:address, :name, :city, :state, :description)
  end
end
