class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :user_status
  
  def user_status
    @user_status = if user_signed_in?
                      true
                    else
                      false
                    end
  end
end
