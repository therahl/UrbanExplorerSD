class UsersController < ApplicationController
  def index
  end

  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def update
    @user = User.find(params[:id])
    redirect_to @user
  end

  def create
    @user = User.create(user_params)
    redirect_to @user
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:family_name, :given_name, :status, :city, :state, :email, :username)
  end
end
