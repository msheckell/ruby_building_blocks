stock_picker = [17,3,6,9,15,8,6,1,10]
spread = 0
dates = []
first_date_counter = 0

while first_date_counter < stock_picker.length-1
	second_date_counter = first_date_counter + 1

	while second_date_counter < stock_picker.length
		new_spread = stock_picker[second_date_counter] - stock_picker[first_date_counter]
		if new_spread > spread
			spread = new_spread
			dates = [first_date_counter, second_date_counter]
		end

		second_date_counter += 1
	end

	first_date_counter += 1
end

puts "Dates to buy and sell: " + dates.join(',').to_s
puts "Total profit: " + spread.to_s