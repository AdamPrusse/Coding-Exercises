puts "Please type out a sentence"
words = gets.chomp.tr('"', '')
gsub('"', '*')

words.each_line(' ') {|s| p s}



# def framer
# 	puts "Please type a sentence you would like framed"
# 	sentence = gets.chomp!.split(/\W+/)
# 	sorted_sentence = sentence.sort_by(&:length)
# 	frame_width = sorted_sentence.last.length

# 	open_close_stars = "*" * (frame_width + 2)

# 	puts open_close_stars

# 	sentence.each do |i|
# 		if i.length < frame_width
# 			puts "*#{i}" + (" " * (frame_width - i.length)) + "*"
# 		else
# 			puts "*#{i}*" 
# 		end
# 	end

# 	puts open_close_stars
# end

# framer




# puts "Please enter a phrase and I will make it pretty"
# word_1 = gets.chomp!

# def printer word
#  arr = word.split(/ /)
#  longest = arr.max_by(&:length).length + 4
#  top = "*" * longest
#  puts ""
#  puts "     #{top}"
#  adder = 0
#  blank = " "
#  arr.each do |x|
#    adder = longest - x.length - 4
#    puts "     * #{x} #{blank * adder}*"
#  end
#  puts "     #{top}"
#  return "Supe is awesome!"
# end

# p printer word_1