require 'io/console' 

guess = rand(1..25)

puts "It's time to play Guess 25! Pick a number between 1 and 25."


puts "\nLet me know when you have picked your number"
puts "\nPress any key to continue"
STDIN.getch
puts "Is your number #{guess}?
higher, lower, or yes" 
response = gets.chomp!.downcase
loop do
	if response == "higher"
		p rand(guess..25)
	elsif response == "lower"
		p rand(1..guess)
	elsif response == "yes"
		p "I'm the best"
	end
end
