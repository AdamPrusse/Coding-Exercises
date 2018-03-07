def piece_calculator num
	count = 1
	total = 0
	(1..num).each do |i|
		puts "On square #{i} there are #{count} pieces"
		total += count
		count *= 2 if i != 1
		count = 2 if i == 1
	end

	puts "The total pieces are #{total}"
	return
end

piece_calculator(64)