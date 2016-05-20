class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable, :zxcvbnable,
         :omniauthable, :omniauth_providers => [:facebook]
  mount_uploader :profile_pic
  has_many :healths
  has_many :results

  has_many :glucoses
  has_many :pressures
  has_many :clinic_records
  has_many :bmis
  # has_many :bloods
  # has_many :urines
  # has_many :xrays
  # has_many :cancer_markers
  # has_many :scopes
  # has_many :ultrasounds
  # has_many :ctscans
  # has_many :mris
  # has_many :petscans
  has_many :clinical_blood_records
  has_many :respiratories

  accepts_nested_attributes_for :healths, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :glucoses, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :pressures, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :clinic_records, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :bmis, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :results, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :respiratories, :reject_if => :all_blank, :allow_destroy => true


  # accepts_nested_attributes_for :bloods, :reject_if => :all_blank, :allow_destroy => true
  # accepts_nested_attributes_for :urines, :reject_if => :all_blank, :allow_destroy => true
  # accepts_nested_attributes_for :xrays, :reject_if => :all_blank, :allow_destroy => true
  # accepts_nested_attributes_for :cancer_markers, :reject_if => :all_blank, :allow_destroy => true
  # accepts_nested_attributes_for :scopes, :reject_if => :all_blank, :allow_destroy => true
  # accepts_nested_attributes_for :ultrasounds, :reject_if => :all_blank, :allow_destroy => true
  # accepts_nested_attributes_for :ctscans, :reject_if => :all_blank, :allow_destroy => true
  # accepts_nested_attributes_for :mris, :reject_if => :all_blank, :allow_destroy => true
  # accepts_nested_attributes_for :petscans, :reject_if => :all_blank, :allow_destroy => true


 enum gender: [ :female,:male]
 enum marital_status: [:divorced, :married, :single, :widowed]
 enum blood_type: [:a, :ab, :b, :o]
 enum ethnicity: [:african,:caribbean,:caucasian,:chinese,:indian, :malay,:orang_asal ]
 enum occupation: [ :executive, :professional, :student, :unemployed]

	# def send_devise_notification(notification, *args)
 #  		devise_mailer.send(notification, self, *args).deliver_later
	# end
  def has_answered_quiz
    array = Array.new
     ques=  Result.where(user_id: self.id)
     if ques.present?
      array << ques.pluck(:question_id)
      new_array = array.flatten.compact.uniq!
      new_array.length == 6
      return true
    else
      return false
    end
 end
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      # user.password = Devise.friendly_token[0,20]
      user.first_name = auth.info.name   # assuming the user model has a name
       user.profile_pic = auth.info.image # assuming the user model has an image
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
   bmi = self.weight/(height*height)
   bmi.round(2)
 end

 def record_name
   user = Health.find_by_user_id(self.id)
   record_id = user.record_category_id
   Record.find(record_id).name

 end


end
