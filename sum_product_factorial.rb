p "Give me a number"

num1 = gets.chomp

num1 = num1.to_i



p "[*] or [+] all numbers between 1 or -1 and #{num1}"

operator = gets.chomp

case operator
when "+"
  if num1 > 0
  total = (1..num1).each.reduce(:+)
  elsif num1 < 0
  total = (num1..-1).each.reduce(:+)
  end
when "*"
  if num1 > 0
    total = (1..num1).each.reduce(:*)
  elsif num1 < 0
    total = (num1..-1).each.reduce(:*)
  end
end

p "The total is #{total}"

