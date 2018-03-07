p "how much do you want to shift the array?"
shift = gets.chomp!.to_i

arr = [1, 2, 3, 4, 5, 6]


shift.times do
    arr.insert(5, arr.delete_at(0))
end

p arr
