def rpssl(p1, p2)
p 'Draw!' if p1 == p2

result = win_matrix[p1.to_sym][p2.to_sym]

puts "Player #{result} won!"
end

def win_matrix
{ 
 rock:     { paper: 2, scissors: 1, lizard: 1, spock: 2},
 paper:    { scissors: 2, rock: 1, lizard: 2, spock: 1},
 scissors: { rock: 2, paper: 1, lizard: 1, spock: 2},
 lizard:   { rock: 2, paper: 1, scissors: 2, spock: 1},
 spock:    { rock: 1, paper: 2, scissors: 1, lizard: 2}
}
end

com = ['paper', 'rock', 'scissors', 'lizard', 'spock'].sample

game_play = 1
while game_play == 1

 p "**************************************"
 p "******* --Welcome to RPSSL1-- ********"
 p "**************************************"
 sleep 1
 p "Enter 1 for One Player"
 p "Enter 2 for Two Players"
 p "**************************************"

 ans1 = gets.chomp

 if ans1 == '1'
   p "************************************"
   p "Enter your weapon of choice."
   p "************************************"
   p1 = gets.chomp.downcase
   p2 = com
   sleep 1
   p "************************************"
   p "Your adversary chooses #{p2}."
   sleep 1
   p "************************************"
   sleep 1
   rpssl(p1, p2)
 elsif ans1 == '2'
   p "Player One pick a weapon!"
   p1 = gets.chomp.downcase
   sleep 1
   p "*************************************"
   p "Player Two pick a weapon!"
   p2 = gets.chomp.downcase
   sleep 1
   p "*************************************"
   sleep 1
   rpssl(p1, p2)
 end
 sleep 1
 p "***************************************"
 p "Press 1 to play again or anything else to end."
 game_play = gets.to_i

 if game_play != 1
   p "Thanks for playing!"
 end
end



# require 'io/console'
# require 'colorize'

# @winning = { 
#  1 =>  { 2 => 2, 3 => 1, 4 => 1, 5 => 2},
#  2 =>  { 3 => 2, 1 => 1, 4 => 2, 5 => 1},
#  3 =>  { 1 => 2, 2 => 1, 4 => 1, 5 => 2},
#  4 =>  { 1 => 2, 2 => 1, 3 => 2, 5 => 1},
#  5 =>  { 1 => 1, 2 => 2, 3 => 1, 4 => 2}
# }

# @choices = {
#   1 => "Rock",
#   2 => "Paper",
#   3 => "Scissors",
#   4 => "Lizard",
#   5 => "Spock"
# }

# @p1count = 0
# @p2count = 0

# until (@p1count > 2) || (@p2count > 2)

#   puts "Player 1 please enter your fighter:

#   Rock - 1
#   Paper - 2
#   Scissors - 3
#   Lizard - 4
#   Spock - 5\n\n"

#   @p1 = STDIN.noecho(&:gets).chomp.to_i

#   puts "Player 2 please enter your fighter:

#   Rock - 1
#   Paper - 2
#   Scissors - 3
#   Lizard - 4
#   Spock - 5\n\n"

#   @p2 = STDIN.noecho(&:gets).chomp.to_i

#   puts "3".red
#   sleep 0.15
#   puts "."
#   sleep 0.15
#   puts "."
#   sleep 0.15
#   puts "."
#   sleep 0.15
#   puts "2".red
#   sleep 0.15
#   puts "."
#   sleep 0.15
#   puts "."
#   sleep 0.15
#   puts "."
#   sleep 0.15
#   puts "1".red
#   sleep 0.15
#   puts "."
#   sleep 0.15
#   puts "."
#   sleep 0.15
#   puts "."
#   sleep 0.15
#   puts "SHOOT!".red
#   sleep 0.5
#   puts ""
#   puts "#{@choices[@p1]} vs #{@choices[@p2]}."

#   puts ""

#   if @p1 == @p2
#     puts "Tie! Great minds think alike! Play again!"
#   elsif @winning
#     [@p1][@p2] == 1
#     puts "Player 1 gets a point."
#     @p1count += 1
#   elsif @winning
#     [@p1][@p2] == 2
#     puts "Player 2 gets a point."
#     @p2count += 1
#   else
#     puts "Invalid input, you imbecile!"
#   end

#   sleep 1.5

#   puts ""
#   puts "Player 1: #{@p1count}"
#   puts ""
#   puts "Player 2: #{@p2count}"
#   puts ""

#   sleep 1.5

# end

# if @p1count > @p2count
#   puts ("
# #####   #            #     #     #  ######  #####        ##       #  #  #  #####  #     #   #### 
# #    #  #           # #     #   #   #       #    #      # #       #  #  #    #    ##    #  #    #
# #    #  #          #   #     # #    #       #    #        #       #  #  #    #    # #   #  #     
# #####   #         #     #     #     #####   #####         #       #  #  #    #    #  #  #   #### 
# #       #        # # # # #    #     #       #   #         #       #  #  #    #    #   # #       #
# #       #       #         #   #     #       #    #        #       #  #  #    #    #    ##  #    #
# #       ###### #           #  #     ######  #     #     #####      ## ##   #####  #     #   #### ").green

# puts ("
# #####  #            #     #     # ###### #####        ####       #####  ####            #           #       ####   ####  ###### #####    # # #
# #    # #           # #     #   #  #      #    #      #    #        #   #    #          # #          #      #    # #    # #      #    #   # # #
# #    # #          #   #     # #   #      #    #          #         #   #              #   #         #      #    # #      #      #    #   # # #
# #####  #         #     #     #    #####  #####          #          #    ####         #     #        #      #    #  ####  #####  #####    # # #
# #      #        # # # # #    #    #      #   #         #           #        #       # # # # #       #      #    #      # #      #   #    # # #
# #      #       #         #   #    #      #    #       #            #   #    #      #         #      #      #    # #    # #      #    #        
# #      ###### #           #  #    ###### #     #     ######      #####  ####      #           #     ######  ####   ####  ###### #     #  # # #").red

# else
#   puts ("
# #####   #            #     #     #  ######  #####        ####      #  #  #  #####  #     #   ####  
# #    #  #           # #     #   #   #       #    #      #    #     #  #  #    #    ##    #  #    # 
# #    #  #          #   #     # #    #       #    #          #      #  #  #    #    # #   #  #      
# #####   #         #     #     #     #####   #####          #       #  #  #    #    #  #  #   ####  
# #       #        # # # # #    #     #       #   #         #        #  #  #    #    #   # #       # 
# #       #       #         #   #     #       #    #       #         #  #  #    #    #    ##  #    # 
# #       ###### #           #  #     ######  #     #     ######      ## ##   #####  #     #   #### ").green 

# puts ("
# #####   #            #     #     #  ######  #####      ##        #####  ####             #           #       ####   ####  ###### #####    # # #
# #    #  #           # #     #   #   #       #    #    # #          #   #    #           # #          #      #    # #    # #      #    #   # # #
# #    #  #          #   #     # #    #       #    #      #          #   #               #   #         #      #    # #      #      #    #   # # #
# #####   #         #     #     #     #####   #####       #          #    ####          #     #        #      #    #  ####  #####  #####    # # #
# #       #        # # # # #    #     #       #   #       #          #        #        # # # # #       #      #    #      # #      #   #    # # #
# #       #       #         #   #     #       #    #      #          #   #    #       #         #      #      #    # #    # #      #    #        
# #       ###### #           #  #     ######  #     #   #####      #####  ####       #           #     ######  ####   ####  ###### #     #  # # #").red
# end





# require 'io/console'
# @computer_score = 0
# @player_score = 0

# @array = ["spock","paper","rock","scissors","lizard"]

# @options = { lizard: ["spock","paper"],
#             spock: ["rock","scissors"],
#             scissors: ["paper","lizard"],
#             paper: ["rock","spock"],
#             rock: ["lizard","scissors"] }

# @interactions = { lizard: {spock: "Lizard poisons Spock!",
#                            paper: "Lizard eats Paper!", 
#                            rock: "Rock crushes Lizard", 
#                            scissors: "Scissors decapitates Lizard!"},
#                    spock: {lizard: "Lizard poisons Spock!", 
#                            rock: "Spock vaporizes Rock", 
#                            paper: "Paper disproves Spock!", 
#                            scissors: "Spock smashes Scissors!"},
#                    paper: {rock: "Paper covers Rock", 
#                            scissors: "Scissors cut Paper!", 
#                            lizard: "Lizard eats Paper!", 
#                            spock: "Paper disproves Spock!"},
#                     rock: {paper: "Paper covers Rock!", 
#                            scissors: "Scissors cut Paper!", 
#                            lizard: "Rock crushes Lizard!", 
#                            spock: "Spock vaporizes Rock!"},
#                 scissors: {rock: "Rock crushes Scissors!", 
#                            paper: "Scissors cut Paper!", 
#                            spock: "Spock smashes Scissors!", 
#                            lizard: "Scissors decapitates Lizard!"}
#                 }

# def verify player
#   @array.include?(player)
# end

# def quit?
#   if STDIN.getch.downcase == "n"
#     if @computer_score > @player_score
#       puts "\n \nThanks for playing!\nYou lost #{@player_score} to #{@computer_score}"
#     elsif @computer_score < @player_score
#       puts "\n \nThanks for playing!\nYou won #{@player_score} to #{@computer_score}"
#     else
#       puts "\n \nThanks for playing!\nYou tied #{@player_score} to #{@computer_score}"
#     end
#     true
#   end
# end

# def compare player, computer
#   return "TIE" if player == computer
#   @options[player.to_sym].include?(computer) ? (@player_score += 1) : (@computer_score += 1)
#   @interactions[player.to_sym][computer.to_sym]
# end

# def round
#   puts "You chose #{@answer}"
#   sleep 1
#   puts "Computer chose #{@computer_answer}"
#   sleep 1
#   puts compare @answer, @computer_answer
#   sleep 3
#   system "clear"
#   puts "computer: #{@computer_score}"
#   puts "player: #{@player_score}"
#   print "\n Play again? (y/n): "
# end

# system "clear"
# puts "Let's play a game \n \n"
# sleep 1
# puts @array
# sleep 1

# loop do
#   print "\nPlease choose:"
#   @computer_answer = @array.sample
#   @answer = gets.chomp
#   verify(@answer) ? round : puts("invalid @answer")
#   break if quit?
# end

# 0 - rock
# 1 - Spock
# 2 - paper
# 3 - lizard
# 4 - scissors

# Scissors cuts paper
# Paper covers rock
# rock crushes lizard
#lizard poisons Spock
# spock smashes scissors
# scissors decapitates lizard
# lizard eats paper
# paper disproves spock
# spock vaporizes rock
# rock crushes scissors




# @modAnswer = {
#   'rock' => 0,
#   'spock' => 1,
#   'paper' => 2,
#   'lizard' => 3,
#   'scissors' => 4,
# }

# puts "Player 1, rock, paper, scissors, lizard, spock?"
# p1 = gets.chomp!.downcase

# puts "Player 2, rock, paper, scissors, lizard, spock?"
# p2 = gets.chomp!.downcase

# if (@modAnswer[p2] + 1) % 5 == @modAnswer[p1]
#   p "Player 1 wins, #{p1} beats #{p2}"
# elsif (@modAnswer[p2] + 2) % 5 == @modAnswer[p1]
#   p "Player 1 wins, #{p1} beats #{p2}"
# elsif @modAnswer[p2] == @modAnswer[p1]
#   p "Tie!"
# else 
#   p "player 2 wins, #{p2} beats #{p1}!"
# end