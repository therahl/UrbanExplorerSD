class Review < ActiveRecord::Base
  belongs_to :users
  belongs_to :businesses
  validates :title, :rating, :description, presence: true
  validates :user_id, uniqueness: {message: "May not leave more than one review.  Please edit or delete prior review"}
end
