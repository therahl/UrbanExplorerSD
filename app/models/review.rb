class Review < ActiveRecord::Base
  belongs_to :users
  belongs_to :businesses, dependent: :destroy
  validates :title, :rating, :description, presence: true
  validates :user_id, uniqueness: {scope: :business_id, message: "May not leave more than one review.  Please edit or delete prior review"}
  acts_as_likeable
end
