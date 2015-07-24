def substrings (string_to_figure_out, valid_substrings)
	words = string_to_figure_out.downcase.split(" ")
	substring_count = {}
	words.each do |word|
		valid_substrings.each do |substring|
			if word =~ /\w?#{substring}\w?/ #anything or not, substring, anything or not
				if substring_count.keys.include?(substring)
					substring_count[substring] += 1
				else
					substring_count[substring] = 1
				end
			end
		end
	end
	Hash[substring_count.sort]
	puts string_to_figure_out
	puts substring_count
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)

#this probably has something to do with regular expressions
#okay regex is catching strings but not substrings
#now it gets the substrings i just need to count them up