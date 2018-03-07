num = "123,456,789"
number = "821,432,612"
number2 = "1,143"
number3 = "1,486,321,456"

def singleNum n
  while n.length > 1
    arr = n.split(/,/)
    count = 0
    a = 0
    arr3 = []
    arr.each do |x|
      arr2 = x.split(//)
      arr2.each do |x|
        a = x.to_i
        count += a
      end
      arr3 << count
      count = 0
    end
    n = arr3.join()
    n = n.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
  end
  p n.to_i
end

singleNum num
singleNum number
singleNum number2
singleNum number3


class String
    def weird_longint_calc
        def int_compressor longint
            longintarr = longint.split(",")
            longintarr = longintarr.map do |i|
                i = i.split('').map(&:to_i).inject(:+)
            end
            longintarr = longintarr.join('').to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
        end
        longint = self
        longint = int_compressor(longint) while longint.length > 3
        longint = longint.chars.map(&:to_i).inject(:+)
        return longint
    end
end
def program
    puts "Please enter a long integer seperated by commas (ex: 1,234,567)"
    reply = gets.chomp!
    puts "The number has been compressed to #{reply.weird_longint_calc} would you like to compress another? (y/n)"
    reply = gets.downcase.chomp!
    program if reply == "y"
end
program
puts "Goodbye!"