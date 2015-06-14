class SocializationsController < ApplicationController
  before_filter :load_socializable

  def like
    current_user.like!(@socializable)
    respond_to do |format|
      format.html
      format.js
    end

  end

  def unlike
    current_user.unlike!(@socializable)
    respond_to do |format|
      format.html
      format.js
    end
  end

private
  def load_socializable
    @business = Business.find(params[:business_id])
    @socializable =
      case
      when id = params[:review_id] # Must be before :item_id, since it's nested under it.
        @business.reviews.find(id)
      when id = params[:business_id]
        Business.find(id)
      when id = params[:user_id]
        User.find(id)
      else
        raise ArgumentError, "Unsupported socializable model, params: " +
                             params.keys.inspect
      end
    raise ActiveRecord::RecordNotFound unless @socializable
  end
end
