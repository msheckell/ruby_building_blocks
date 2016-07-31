
puts "Enter a phrase you would like to have encrypted"
phrase = gets.chomp
decoded = ""

puts "Now enter a number 1-26"
number = gets.chomp.to_i

lowercase = ('a'..'z').to_a
uppercase = ('A'..'Z').to_a

	phrase.each_char do |letter|
		if uppercase.include?(letter)
			letter = letter.ord
			letter += number
			if letter > 90
				letter -= 26
			end
		elsif lowercase.include?(letter)
			letter = letter.ord
			letter += number
			if letter > 122
				letter -= 26
			end
		end
		decoded << letter.chr
	end

puts decoded