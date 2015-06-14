class Business < ActiveRecord::Base
  has_many :reviews, dependent: :destroy
  validates :name, uniqueness: true
  acts_as_followable
  acts_as_likeable
end
