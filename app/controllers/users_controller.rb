class UsersController < ApplicationController
  def index
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update_attributes(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

  def show
    @user = current_user
    @reviews = @user.reviews.all
  end

  private

  def user_params
    params.require(:user).permit(:family_name, :given_name, :status, :city, :state, :email, :username)
  end
end
