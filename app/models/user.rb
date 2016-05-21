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
  has_many :clinical_blood_records
  has_many :pulses

  accepts_nested_attributes_for :healths, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :glucoses, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :pressures, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :clinic_records, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :bmis, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :results, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :pulses, :reject_if => :all_blank, :allow_destroy => true



 enum gender: [ :female,:male]
 enum marital_status: [:divorced, :married, :single, :widowed]
  # enum blood_type: [:a+, :a-]
 # enum blood_type: [:aplus => "A+", :ab, :b, :o]
 # "A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-"
 # enum ethnicity: [:african,:caribbean,:caucasian,:chinese,:indian, :malay,:orang_asal ]
 enum occupation: [ :executive, :professional, :student, :unemployed]
 enum ethnicity: [:melayu, :bugis, :banjar, :jawa, :jawi_pekan, :minangkabau, :cina, :india, :malayali, :punjabi, :sikh, :tamil, :telegu, :india_muslim,
                    :pakistani, :srilanka, :tamil_srilanka, :melayu_srilanka, :sinhalese, :indonesian, :bumiputera_sabah, :bajau, :dusun, :murut, :sino_native,
                    :suluk, :bisaya, :brunei, :kedayan, :lundayeh, :melanau, :melayu_sabah, :rungus, :sungai, :bumiputera_sarawak, :melayu_sarawak, :iban, :bidayuh,
                    :kayan, :kenyah, :kelabit, :penan, :bisayah, :berawan, :orang_asli, :jakun, :negrito, :sakai, :senoi, :others_asian, :eurasian, :filipinos, :others ]


	# def send_devise_notification(notification, *args)
 #  		devise_mailer.send(notification, self, *args).deliver_later
	# end
  def has_answered_quiz?
    array = Array.new
    ques =  Result.where(user_id: self.id)
     if ques.present?
      array << ques.pluck(:question_id)
      new_array = array.flatten.compact.uniq
      new_array.length == 6
      return true
    else
      return false
    end
 end

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
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
