# get a user input phone number
# make sure the number is 9 or 10 digits
# if 10 digits remove a 1 from the front
# remove dashes, parentheses, periods, + signs
# make sure all inputs produce the same output of 9 digits



def final_num
  puts "What is your phone number?"
  edit_phone = gets.chomp!
  
  edit_phone.delete! "^0-9" 
  edit_phone[0] = '' if edit_phone[0] == '1'
  puts edit_phone
end

final_num


