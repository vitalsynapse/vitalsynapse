class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :healths
  accepts_nested_attributes_for :healths
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable, :zxcvbnable,
         :omniauthable, :omniauth_providers => [:facebook]

 enum gender: [:male, :female]
 enum marital_status: [:single, :married, :widowed, :divorced]
 enum blood_type: [:A, :B, :AB, :O]
 enum ethnicity: [:Malay, :Indian, :Chinese, :Others]
 enum occupation: [:Professional, :Student, :Unemployed, :Executive]
	# def send_devise_notification(notification, *args)
 #  		devise_mailer.send(notification, self, *args).deliver_later
	# end
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      # user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name   # assuming the user model has a name
      # user.image = auth.info.image # assuming the user model has an image
    end
  end

  def self.new_with_session(params, session)
   super.tap do |user|
     if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
       user.email = data["email"] if user.email.blank?
     end
   end
 end

 def bmi
   height = self.height
   self.weight/(height*height)
 end
end
