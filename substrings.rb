
def substrings
	dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
	matches = Hash.new(0)
	input = "Howdy partner, sit down! How's it going?".downcase
	input.gsub!(/[!@%&"',?]/,'')
	input = input.split(" ")


	input.each do |word|
		if dictionary.include?(word)
			matches[word] += 1
		end
	end
	puts matches
end

substrings