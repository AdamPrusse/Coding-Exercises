# Write a program that converts English text into morse code and vice versa
# get user input
# get string into an array
# split array into individual characters


# convert letters to morse
# return the morse code

# convert morse to letters
# return the letters from the morse code

p "What would you like me to convert?"
w = gets.chomp


arr = w.split(//)

p arr.index("a").to_s.replace(".-")
p arr.index("b").to_s.replace("...")

# Doesnt work yet


# def translator str
#   table = {'A' => '.-', 'B' => '-...', 'C' => '-.-.', 'D' => '-..', 'E' => '.', 'F' => '..-.', 'G' => '--.', 'H' => '....', 'I' => '..', 'J' => '.---', 'K' => '-.-', 'L' => '.-..', 'M' => '--', 'N' => '-.', 'O' => '---', 'P' => '.--.', 'Q' => '--.-', 'R' => '.-.', 'S' => '...', 'T' => '-', 'U' => '..-', 'V' => '...-', 'W' => '.--', 'X' => '-..-', 'Y' => '-.--', 'Z' => '--..', '1' => '.----', '2' => '..---', '3' => '...--', '4' => '....-', '5' => '.....', '6' => '-....', '7' => '--...', '8' => '---..', '9' => '----.', '0' => '-----'}
#   convert = str.gsub(Regexp.union(table.keys), table)
#   puts convert 
# end
# puts "Enter a sentence."
# test = gets.chomp.upcase
# translator(test)