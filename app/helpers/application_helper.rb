module ApplicationHelper

	def blood
		blood = @blood_records.where(user_id: @user.id ).pluck(:haemoglobin)
		blood_order = blood.reverse
		array =[]
		blood_order.each_with_index { |v, i| array.push(["Result #{i}", v]) }
		array
	end

	def hba1c
		blood = @blood_records.where(user_id: @user.id ).pluck(:hba1c)
		blood_order = blood.reverse
		array =[]
		blood_order.each_with_index { |v, i| array.push(["Result #{i}", v]) }
		array
	end

	def total_cholestrol
		blood = @blood_records.where(user_id: @user.id ).pluck(:total_cholestrol)
		blood_order = blood.reverse
		array =[]
		blood_order.each_with_index { |v, i| array.push(["Result #{i}", v]) }
		array
	end

	def urea
		blood = @blood_records.where(user_id: @user.id ).pluck(:urea)
		blood_order = blood.reverse
		array =[]
		blood_order.each_with_index { |v, i| array.push(["Result #{i}", v]) }
		array
	end

	def tsh
		blood = @blood_records.where(user_id: @user.id ).pluck(:tsh)
		blood_order = blood.reverse
		array =[]
		blood_order.each_with_index { |v, i| array.push(["Result #{i}", v]) }
		array
	end


	def alt
		blood = @blood_records.where(user_id: @user.id ).pluck(:alanine_transaminase)
		blood_order = blood.reverse
		array =[]
		blood_order.each_with_index { |v, i| array.push(["Result #{i}", v]) }
		array
	end

	def protein
		blood = @blood_records.where(user_id: @user.id ).pluck(:protein)
		blood_order = blood.reverse
		array =[]
		blood_order.each_with_index { |v, i| array.push(["Result #{i}", v]) }
		array
	end


end
