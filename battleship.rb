require 'io/console'

class Person 
  validate :name, presence: true
  
  Person.create(name: "Timmy").value?


  def welcome
    puts "WELCOME TO BATTLESHIP"

      puts "what's your name?"
      @username = gets.chomp

      puts "Press 'h' for instructions or if you know how to play then press 'p' "
      input = STDIN.getch.downcase

      if input == 'h'
        instructions
      elsif input == 'p'
        shipsetup(@username)
      end
  end

  def instructions
    puts "*************"
    puts "INSTRUCTIONS"
    puts "*************"
    puts ""
    puts "OBJECT OF THE GAME:"
    puts ""
    puts "Be the first player to sink the opponents battleship"
    puts ""
    puts "HOW TO PLAY:"
    puts ""
    puts "You and the computer will alternate turns taking shots at each others ships"
    puts "To call your shot you will need to look at the game grid and call out the location by letter and number"
    puts "by selcting the letter on the left side of the grid and a number on the top of the grid example: A,7. "
    puts "After you call your shot you will see if it was a hit or miss. The game will continue until one of the battleships is sunk."
    puts ""
    puts "Press enter when you are ready to play"
    STDIN.getch 
    shipsetup(@username)
  end

  def shipsetup(player)
    loop do
      p "Welcome Admiral #{player}!"
      p "Let's place your ships."
      pb = []
      10.times do |i|
        arr = []
      10.times do |b|
        arr.push(" ")
      end
        pb.push(arr)
      end

      ab = []
      10.times do |i|
        arr = []
      10.times do |b|
        arr.push(" ")
      end
        ab.push(arr)
      end

  def convert_user_input(user_input) #pass in the user input "e6"
    converter = { "a" => 0,
                "b" => 1,
                "c" => 2,
                "d" => 3,
                "e" => 4,
                "f" => 5,
                "g" => 6,
                "h" => 7,
                "i" => 8,
                "j" => 9,
  }
    position = user_input
    position.downcase.split(//)
    position[0] = converter[position[0]]
    position[1] = position[1].to_i
    position[1] -= 1
    position
  end #This will return a grid position like this [2,4]

  def get_from_user_grid_position(position)
    @user_grid[position[0]][position[1]]
  end
  
  def get_from_conp_grid_position(position)
    @comp_grid[position[0]][position[1]]
  end

  def write_to_user_grid_position(position, letter)
    @user_grid[position[0]][position[1]]
  end 
  
  def write_to_comp_grid_position(position, letter)
    @comp_grid[position[0]][position[1]]
  end 


      gameboard = 
        "
         +-------------------------------------------+     +-------------------------------------------+ 
         |                Player Board               |     |                Attack Board               |
         +---+---+---+---+---+---+---+---+---+---+---+     +---+---+---+---+---+---+---+---+---+---+---+
         |   | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 0 |     |   | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 0 |
         +---+---+---+---+---+---+---+---+---+---+---+     +---+---+---+---+---+---+---+---+---+---+---+
         | a | #{pb[0][0]} | #{pb[0][1]} | #{pb[0][2]} | #{pb[0][3]} | #{pb[0][4]} | #{pb[0][5]} | #{pb[0][6]} | #{pb[0][7]} | #{pb[0][8]} | #{pb[0][9]} |     | a | #{ab[0][0]} | #{ab[0][1]} | #{ab[0][2]} | #{ab[0][3]} | #{ab[0][4]} | #{ab[0][5]} | #{ab[0][6]} | #{ab[0][7]} | #{ab[0][8]} | #{ab[0][9]} |
         +---+---+---+---+---+---+---+---+---+---+---+     +---+---+---+---+---+---+---+---+---+---+---+
         | b | #{pb[1][0]} | #{pb[1][1]} | #{pb[1][2]} | #{pb[1][3]} | #{pb[1][4]} | #{pb[1][5]} | #{pb[1][6]} | #{pb[1][7]} | #{pb[1][8]} | #{pb[1][9]} |     | b | #{ab[1][0]} | #{ab[1][1]} | #{ab[1][2]} | #{ab[1][3]} | #{ab[1][4]} | #{ab[1][5]} | #{ab[1][6]} | #{ab[1][7]} | #{ab[1][8]} | #{ab[1][9]} |
         +---+---+---+---+---+---+---+---+---+---+---+     +---+---+---+---+---+---+---+---+---+---+---+
         | c | #{pb[2][0]} | #{pb[2][1]} | #{pb[2][2]} | #{pb[2][3]} | #{pb[2][4]} | #{pb[2][5]} | #{pb[2][6]} | #{pb[2][7]} | #{pb[2][8]} | #{pb[2][9]} |     | c | #{ab[2][0]} | #{ab[2][1]} | #{ab[2][2]} | #{ab[2][3]} | #{ab[2][4]} | #{ab[2][5]} | #{ab[2][6]} | #{ab[2][7]} | #{ab[2][8]} | #{ab[2][9]} |
         +---+---+---+---+---+---+---+---+---+---+---+     +---+---+---+---+---+---+---+---+---+---+---+
         | d | #{pb[3][0]} | #{pb[3][1]} | #{pb[3][2]} | #{pb[3][3]} | #{pb[3][4]} | #{pb[3][5]} | #{pb[3][6]} | #{pb[3][7]} | #{pb[3][8]} | #{pb[3][9]} |     | d | #{ab[3][0]} | #{ab[3][1]} | #{ab[3][2]} | #{ab[3][3]} | #{ab[3][4]} | #{ab[3][5]} | #{ab[3][6]} | #{ab[3][7]} | #{ab[3][8]} | #{ab[3][9]} |
         +---+---+---+---+---+---+---+---+---+---+---+     +---+---+---+---+---+---+---+---+---+---+---+
         | e | #{pb[4][0]} | #{pb[4][1]} | #{pb[4][2]} | #{pb[4][3]} | #{pb[4][4]} | #{pb[4][5]} | #{pb[4][6]} | #{pb[4][7]} | #{pb[4][8]} | #{pb[4][9]} |     | e | #{ab[4][0]} | #{ab[4][1]} | #{ab[4][2]} | #{ab[4][3]} | #{ab[4][4]} | #{ab[4][5]} | #{ab[4][6]} | #{ab[4][7]} | #{ab[4][8]} | #{ab[4][9]} |
         +---+---+---+---+---+---+---+---+---+---+---+     +---+---+---+---+---+---+---+---+---+---+---+
         | f | #{pb[5][0]} | #{pb[5][1]} | #{pb[5][2]} | #{pb[5][3]} | #{pb[5][4]} | #{pb[5][5]} | #{pb[5][6]} | #{pb[5][7]} | #{pb[5][8]} | #{pb[5][9]} |     | f | #{ab[5][0]} | #{ab[5][1]} | #{ab[5][2]} | #{ab[5][3]} | #{ab[5][4]} | #{ab[5][5]} | #{ab[5][6]} | #{ab[5][7]} | #{ab[5][8]} | #{ab[5][9]} |
         +---+---+---+---+---+---+---+---+---+---+---+     +---+---+---+---+---+---+---+---+---+---+---+
         | g | #{pb[6][0]} | #{pb[6][1]} | #{pb[6][2]} | #{pb[6][3]} | #{pb[6][4]} | #{pb[6][5]} | #{pb[6][6]} | #{pb[6][7]} | #{pb[6][8]} | #{pb[6][9]} |     | g | #{ab[6][0]} | #{ab[6][1]} | #{ab[6][2]} | #{ab[6][3]} | #{ab[6][4]} | #{ab[6][5]} | #{ab[6][6]} | #{ab[6][7]} | #{ab[6][8]} | #{ab[6][9]} |
         +---+---+---+---+---+---+---+---+---+---+---+     +---+---+---+---+---+---+---+---+---+---+---+
         | h | #{pb[7][0]} | #{pb[7][1]} | #{pb[7][2]} | #{pb[7][3]} | #{pb[7][4]} | #{pb[7][5]} | #{pb[7][6]} | #{pb[7][7]} | #{pb[7][8]} | #{pb[7][9]} |     | h | #{ab[7][0]} | #{ab[7][1]} | #{ab[7][2]} | #{ab[7][3]} | #{ab[7][4]} | #{ab[7][5]} | #{ab[7][6]} | #{ab[7][7]} | #{ab[7][8]} | #{ab[7][9]} |
         +---+---+---+---+---+---+---+---+---+---+---+     +---+---+---+---+---+---+---+---+---+---+---+
         | i | #{pb[8][0]} | #{pb[8][1]} | #{pb[8][2]} | #{pb[8][3]} | #{pb[8][4]} | #{pb[8][5]} | #{pb[8][6]} | #{pb[8][7]} | #{pb[8][8]} | #{pb[8][9]} |     | i | #{ab[8][0]} | #{ab[8][1]} | #{ab[8][2]} | #{ab[8][3]} | #{ab[8][4]} | #{ab[8][5]} | #{ab[8][6]} | #{ab[8][7]} | #{ab[8][8]} | #{ab[8][9]} |
         +---+---+---+---+---+---+---+---+---+---+---+     +---+---+---+---+---+---+---+---+---+---+---+
         | j | #{pb[9][0]} | #{pb[9][1]} | #{pb[9][2]} | #{pb[9][3]} | #{pb[9][4]} | #{pb[9][5]} | #{pb[9][6]} | #{pb[9][7]} | #{pb[9][8]} | #{pb[9][9]} |     | j | #{ab[9][0]} | #{ab[9][1]} | #{ab[9][2]} | #{ab[9][3]} | #{ab[9][4]} | #{ab[9][5]} | #{ab[9][6]} | #{ab[9][7]} | #{ab[9][8]} | #{ab[9][9]} |
         +---+---+---+---+---+---+---+---+---+---+---+     +---+---+---+---+---+---+---+---+---+---+---+
       "


    break unless game_over?
    end
  end

  def game_over?
    puts "Good game #{@username}! Do you want to play again? (press 'y' for yes or 'n' for no)"
    answer = STDIN.getch.downcase
      if answer == 'y'
        welcome
      elsif answer != 'y'
        puts "Thanks for playing"
      end
  end
end 

# ==================== Computer AI stuff Start ========================== #

def get_hits
  hits = []
  @user_grid.length.times do |a|
    @user_grid[a].length.times do |b|
      if @user_grid[a][b] == "h"
        hits.push([a,b])
      end
    end
  end
  hits
end

def computer_attack
  did_attack = false
  hits = get_hits
  hits.each do |hit|
    if hit_position_has_space? hit
      if @user_grid[hit[0] - 1][hit[1]] == "h" && !did_attack
        if can_attack?(@user_grid[hit[0] + 1][hit[1]])
          attack_location([hit[0] + 1,hit[1]])
          did_attack = true
        end
      end
      if @user_grid[hit[0] + 1][hit[1]] == "h" && !did_attack
        if can_attack?(@user_grid[hit[0] - 1][hit[1]])
          attack_location([hit[0] - 1,hit[1]])
          did_attack = true
        end
      end
      if @user_grid[hit[0]][hit[1] + 1] == "h" && !did_attack
        if can_attack?(@user_grid[hit[0]][hit[1] - 1])
          attack_location([hit[0],hit[1] - 1])
          did_attack = true
        end
      end
      if @user_grid[hit[0]][hit[1] - 1] == "h" && !did_attack
        if can_attack?(@user_grid[hit[0]][hit[1] + 1])
          attack_location([hit[0],hit[1] + 1])
          did_attack = true
        end
      end
    end
  end
  
  hits.each do |hit|
    if !no_surounding_hits?(hit) && hit_position_has_space?(hit) && !did_attack
      loop do
        try_this = random_surrounding(hit)
        if can_attack?(@user_grid[try_this[0]][try_this[1]])
          attack_location([try_this[0],try_this[1]])
          did_attack = true
        end
        break if did_attack
      end
    end
  end
  
    if !did_attack
      loop do
        location = [ rand(0..9), rand(0..9) ]
        if can_attack?(@user_grid[location[0]][location[1]])
          attack_location(location)
          did_attack = true
        end
        break if did_attack
      end
    end
end

def attack_location(location)
  success = false
  current = @user_grid[location[0]][location[1]]
  if current == 's'
    @user_grid[location[0]][location[1]] = "h"
    success =true
  elsif current == " "
    @user_grid[location[0]][location[1]] = "m"
    success = true
  end
    success
end

def random_surrounding hit
  [[hit[0] - 1,hit[1]], [hit[0],hit[1] + 1], [hit[0] + 1, hit[1]], [hit[0], hit[1] - 1]].sample
end

def no_surounding_hits? location
  has_hit = false
  spots = [@user_grid[location[0] - 1][location[1]],
              @user_grid[location[0]][location[1] + 1],
              @user_grid[location[0] + 1][location[1]],
              @user_grid[location[0]][location[1] - 1]]
  spots.each do |spot|
    has_hit = true if spot == "h"
  end
  has_hit
end

def can_attack? item
  item == "s" || item == " "
end

def hit_position_has_space? hit
  filled_count = 0
     spots = [@user_grid[hit[0] - 1][hit[1]],
              @user_grid[hit[0]][hit[1] + 1],
              @user_grid[hit[0] + 1][hit[1]],
              @user_grid[hit[0]][hit[1] - 1]]
    
    spots.each do |spot|
      filled_count += 1 if spot == "h" || spot == "s"
    end
    filled_count < 4 ? true : false
end
# ==================== Computer AI stuff End ========================== #

# =================== Ship Placement Start ============================ #

@converter = { "a" => 0,
              "b" => 1,
              "c" => 2,
              "d" => 3,
              "e" => 4,
              "f" => 5,
              "g" => 6,
              "h" => 7,
              "i" => 8,
              "j" => 9,
}

@game_board = []
@last_guess = nil
10.times do |i|
  arr = []
  10.times do |b|
    arr.push(" ")
  end
  @game_board.push(arr)
end

def print_board
  puts"        1   2   3   4   5   6   7   8   9  10"
  letters = ("A".."J").to_a
  counter = 0
  @game_board.each do |row|
    puts "----------------------------------------------"
    print "|| #{letters[counter]} |"
    row.each do |space|
      print "| #{space} "
    end
    
    puts "|"
    counter += 1
  end
  puts "----------------------------------------------"
end

print_board


def place_ship
  puts "Is the selected ship being placed north south east or west?"
    ship_direction = gets.chomp!
  
  puts "Where will the ship be placed?"
  number = []
  number1 = []
  letter = []
  
    ship_position = gets.chomp
    p ship_position
    ship_position.downcase!
    p ship_position
    ship_position = ship_position.split(//)
      ship_position.each do |char|
          if /\d/.match(char) != nil
            number << char
          else
            letter << char
          end
      end
      number = number.reduce(:+)
      number1 = number1 << number
  
      ship_position = letter + number1
    p ship_position
    
    # "E6"
    # "e6"
    # ["e","6"]
    # [4,"6"]
    # [1,6]
    # 
    
    ship_position[0] = @converter[ship_position[0]]
    p ship_position
    ship_position[1] = ship_position[1].to_i
    p ship_position
    ship_position[1] -= 1
    
    p ship_position
    
    case ship_direction
    when "north"
      if ship_position[0] > 3 
        @game_board[ship_position[0]][ship_position[1]] = "s"
        @game_board[ship_position[0]-1][ship_position[1]] = "s"
        @game_board[ship_position[0]-2][ship_position[1]] = "s"
        @game_board[ship_position[0]-3][ship_position[1]] = "s"
      else
        p "ship can't be placed"
      end
      
  
    when "east"
      if ship_position[1] < 7
        @game_board[ship_position[0]][ship_position[1]] = "s"
        @game_board[ship_position[0]][ship_position[1]+1] = "s"
        @game_board[ship_position[0]][ship_position[1]+2] = "s"
        @game_board[ship_position[0]][ship_position[1]+3] = "s"
      else
        p "ship can't be placed"
      end
      
    when "south"
      if ship_position[0] > 7
        @game_board[ship_position[0]][ship_position[1]] = "s"
        @game_board[ship_position[0]+1][ship_position[1]] = "s"
        @game_board[ship_position[0]+2][ship_position[1]] = "s"
        @game_board[ship_position[0]+3][ship_position[1]] = "s"
      else
        p "ship can't be placed"
      end
    
    when "west"
      if ship_position[1] > 3
        @game_board[ship_position[0]][ship_position[1]] = "s"
        @game_board[ship_position[0]][ship_position[1]-1] = "s"
        @game_board[ship_position[0]][ship_position[1]-2] = "s"
        @game_board[ship_position[0]][ship_position[1]-3] = "s"
      else 
        p "ship can't be placed"
        place_ship
      end
  
    end
  end
  
  place_ship
  
  print_board


# ============ Ship Placement End ======================= #
  
welcome