# Dinner 
# Bottega Diner (nested hashes)
# You get one entree and two side choices at regular cost.
# - show them the entire menu (print out)
# - waitress suggests a chef’s special, which is a random mix of 1 entree and 2 side choices
# - User selects an entree.
# - “Waitress” makes a comment based on their selection (you ordered this? That’s gross)
# - comment can either be a comparison of the two items, or random comment pulled from a comment vault.
# - Tell them the price
# - repeat the above options for side choices (suggestion and a price, don’t repeat chef suggestion)
# - total up the cost
# Have a breakfast, lunch and dinner menu.  Breakfast has different items, lunch and dinner have the same items but are different prices.

# BONUS: Allow for item customization (how items are prepared, decide addtional cost implications)

# EXTRA BONUS: 3D print out actual food and eat it.

Breakfast = ["1. Green Eggs and Ham", "2. Omelette", "3. French Toast","4. Breakfast Burrito"]

Lunch = ["1. BLT", "2. Hamburger", "3. Spaghetti", "4. Steak", "5. Vegetarian", "6. BBQ Chicken"]

Sides =  ["1. Fresh Fruit", "2. Corn on the cob", "3. Steamed Brocolli", "4. Parfait", "5. Seasonal Soup", "6. French Fries", "7. Hashbrowns"]

Dinner= ["BLT", "Hamburger", "Spaghetti", "Steak", "Vegetarian", "BBQ Chicken"]


puts "Welcome to Bottega diner!\nMy Name is Susan and I will be your waitress today!\n\n\n ;)\n\n\nAre you here for breakfast, lunch, or dinner?"

answer = gets.chomp!
puts answer
puts "_________________________________________\n\n"
puts "That shirt looks really great on you ;)\n\n"
puts "This is our #{answer} menu\n\n"

if answer = "breakfast"
  puts Breakfast
elsif answer = "lunch"
  puts Lunch
elsif answer = "dinner"
  puts Dinner
end


#Dinner = Lunch Menu items + 2.00
