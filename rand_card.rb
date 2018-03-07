def rand_card
  card_num = rand(1..13)
  card_suit = rand(1..4)
  
  if card_suit == 1
  	puts "#{card_num}, diamonds"
  elsif card_suit == 2
  	puts "#{card_num}, spades"
  elsif card_suit == 3
  	puts "#{card_num}, clubs"
  else card_suit == 4
  	puts "#{card_num}, hearts"
  end
end

rand_card

require "pry"

# Deck of Cards has a suit, facecard, value

# p deck = {  "hearts" => { :one => 1, :two => 2, :three => 3 },
# 			"clubs" => { :one => 1, :two => 2, :three => 3 },
# 			"diamonds" => { :one => 1, :two => 2, :three => 3 },
#  			"spades"  => { :one => 1, :two => 2, :three => 3 }
# 		}

# binding.pry

# class Hash
# 	def random_key
# 		return self.keys.sample
# 	end
# end

# card_values = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"]

# @deck = {
# 		:spades   => card_values,
# 		:hearts	  => card_values,
# 		:diamonds => card_values,
# 		:clubs    => card_values
# 		}

# def pick_a_card
# 	suit = @deck.random_key
# 	card = {
# 			:suit => suit.capitalize, 
# 			:value => @deck[suit].to_a.sample
# 		   }
# 	puts "#{card[:value]} of #{card[:suit]}"
# end
	
# pick_a_card