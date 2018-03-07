10.downto(1) do |number|
	p number
end

def recursive_countdown(attempt)
	return if attempt.zero?
	puts attempt
	recursive_countdown(attempt-1)
end

recursive_countdown(10)


def sum_array(arr)
	total_sum = 0

	arr.each do |element|
		total_sum += element
	end

end

p sum_array([5, 6, 87 ,8, 31, 12, 334, 5, 45, 6])



my_array == (1..10).to_a

def sum_array_recursive(arr)

	if arr.empty?
		0
	else
		head, *tail = arr
		binding.pry
		head + sum_array_recursive(tail)
	end

end
p sum_array_recursive(my_array)

def factorial_iterative number
	if number == 0 || number == 1
		1
	else
		sum = 1
		number.times do |n|
			sum *= (n +1)
		end 
		puts sum
	end
end

factorial_iterative(5)

def recur_fact(num)
  if num == 0 || num == 1
    1
  else
    num * recur_fact(num - 1)
  end
end

recur_fact(5)