class Business < ActiveRecord::Base
  has_many :reviews, dependent: :destroy
  validates :name, uniqueness: true

end
