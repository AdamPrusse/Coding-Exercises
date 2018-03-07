require 'date'

start_date = Time.local(1994)
end_date = Time.local(2020, 12, 31)
birthday_friday_counter = 0

while end_date >= start_date
  if end_date.strftime("%A") == "Friday" && end_date.strftime("%d") == "21" && end_date.strftime("%B") == "June"
    birthday_friday_counter += 1
  end
  end_date -= 86400
end

p birthday_friday_counter