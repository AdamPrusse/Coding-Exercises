def rev_cap str
	count = 0

	str = str.downcase.reverse.chars.map do |x|
		count += 1
		count.even? ? x.upcase : x
	end

	str.join("")
end

word = gets.chomp!
p rev_cap(word)


def do_the_thing input
	other = true
	input.downcase.split('').each_with_object([]) do |l,a|
		other = :other unless l.upcase == l
		other ? a.unshift(l) : a.unshift(l.upcase)
	end.join
end

print "give me a string: "
puts do_the_thing.gets.chomp!