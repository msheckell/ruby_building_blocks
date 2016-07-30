
	puts "Enter a phrase you would like to have encrypted"
	phrase = gets.chomp
	letters = phrase.split("")

	# puts "Now enter a number 1-26"
	# number = gets.chomp

	letters.each do |letter|
		letter = letter.ord
		letter += 5
		if letter > 90
			letter -= 26
		end
		letters << letter.chr
		puts letter
	end


puts letters.join("")