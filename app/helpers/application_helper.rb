module ApplicationHelper
	def header(text)  #added helper method to provide the header
		content_for(:header) { text.to_s }
	end

	def blood
	 ClinicalBloodRecord.where(user_id: @user.id).all.map do |s|
			{
				xkey: s.report_date,
				ykey: s.haemoglobin
			}
		end
	end
end
