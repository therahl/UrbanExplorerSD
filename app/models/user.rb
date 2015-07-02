class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:twitter]

  has_many :reviews, dependent: :destroy
  acts_as_follower
  acts_as_liker
  acts_as_likeable

  # for paperclip gem to add avatars for each user
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => ":style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  def self.from_omniauth(auth)
    # binding.pry
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.name + '@local.com'
      user.password = Devise.friendly_token[0,20]
      user.given_name = auth.info.name
      # user.family_name = auth.info.name.split(' ').last   # assuming the user model has a name
      # user.avatar = auth.info.image
    end
  end

  def self.new_with_session(params, session)
      super.tap do |user|
        data = session["devise.twitter_data"]
          user.avatar = data["image"] if user.avatar.blank?
      end
  end
end
