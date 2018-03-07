sequence1 = "GAGCCTACTAACGGGAT"
sequence2 = "CATCGTAATGACC5gCT"

if sequence1.length != sequence2.length
  p "Please enter a valid sequence"
else
  sequence1.chars.zip(sequence2.chars).select { |a,b| a != b }.count
end




# str1 = "GAGCCTACTAACGGGAT"
# str2 = "CATCGTAATGACGGCCT"

# def comper(s, s2)
#  arr1 = s.split(//)
#  arr2 = s2.split(//)
#  i = 0
#  count = 0
#  if arr1.length == arr2.length
#    arr1.each do |x|
#      if x != arr2[i]
#        count += 1
#      end
#      i += 1
#    end
#  elsif
#    puts "The strings are not equal lengths"
#  end
#  p "The hamming count is #{count}"
# end

# comper(str1, str2)