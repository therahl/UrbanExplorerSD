class Business < ActiveRecord::Base
  has_many :reviews, dependent: :destroy
  validates :name, uniqueness: true
  acts_as_followable
  acts_as_likeable
  geocoded_by :full_street_address
  after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }

  def full_street_address
    "#{self.address} #{self.city}, #{self.state}"
  end

end
