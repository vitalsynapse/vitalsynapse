class Bmi < ActiveRecord::Base
	belongs_to :user

	before_create :bmi_value

	private

	def bmi_value
		height = self.height
    bmi = self.weight/(height*height)
   	bmi_figure =   bmi.round(2)
	 	self.bodymassindex  = bmi_figure

	end
end
