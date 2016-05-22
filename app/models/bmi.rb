class Bmi < ActiveRecord::Base
	belongs_to :user
	# validates :height, presence: true, format: { with: /\d{1}/,
  #   message: "only allows letters" }
	before_create :bmi_value

	private


	def bmi_value
		height = self.height
	 	if height % 1 == 0
			converted = height/100
		else
			converted = height
		end
    bmi = self.user_weigh/(converted*converted)
   	bmi_figure =   bmi.round(2)
	 	self.bodymassindex  = bmi_figure

	end

end
