module ApplicationHelper
	def header(text)  #added helper method to provide the header
		content_for(:header) { text.to_s }
	end
end
