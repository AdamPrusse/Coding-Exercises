Arr = [5, 7, 8, 3, 14, 1, 2, 8, 15, 100, -15, -16]


def even_num
Arr.select { |num| num.even? }
end

def odd_num
Arr.select { |num| num.odd? }
end

def pick_num
  finnum = gets.chomp.to_i
  Arr[finnum]
end
  
  
puts "ODD POSITIONS"
puts odd_num

puts "EVEN POSITIONS"
puts even_num

puts "Give me a position in the array"
puts pick_num
