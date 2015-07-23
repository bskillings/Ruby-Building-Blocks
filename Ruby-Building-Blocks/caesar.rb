puts "enter phrase to encode"
input = gets.chomp
puts "enter offset"
offset = gets.chomp.to_i
characters = input.split("")
numbers = []
characters.each do |c|
	code = c.ord
	if c.ord != 32
		code += offset
	end
	if (code > 90 && code < 97) || code > 122
			code -= 26
			puts "i'm in the if loop"
	end

	numbers.push(code)
end
puts numbers
coded_chars = []
numbers.each do |n|
	coded_chars.push(n.chr)
end
puts coded_chars.join
