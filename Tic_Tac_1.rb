#board initialization passed to board this is the hash 
def initialize_board
  b = {}
  (1..9).each {|x| b[x] = ' ' }
  b
end

#logic for empty spaces / selects the position inside the hash
def empty_position(b)  # this will pass the board #
  b.keys.select {|pos| b[pos] == ' '} # select the keys | check equals to
end

# input; again board hash will be used as a parameter, and whatever chosen # will be given 'X'
def player_picks_area(b)
  begin # we will run through a loop
    puts "please choose (1-9)"
    position = gets.chomp.to_i
  end until  empty_position(b).include?(position)   
      b[position] = 'X'
end

# logic behind the computer that picks the nubmer randomly; again board hash is passed
def computer_picks_area(b)
  pos = empty_position(b).sample # pos var is used to assign 
  b[pos] = '0'  # passed board hash given the random value assigned to '0'
end


# Check if someone wins; logic/algorythm - checks 3 consecutive line of number in a hash. it returns the given string
def winning_checker(b)
  winning_line = [[1,2,3],[3,6,9],[7,8,9],[1,4,7],[2,5,8],[7,5,3]]
  winning_line.each do |line|
    return 'Player1' if b.values_at(*line).count('X') == 3 # compare to the 3,return string will be given to def winning_message
    return 'Computer' if b.values_at(*line).count('0') == 3
  end # close with end
  nil
end


# Checker if 9 position have been filled comparisor that uses empty_space as parameter
def nine_position_checker(b)
  empty_position(b) == [] # dont forget the full def with parameter!
end

# Displays the message
def winning_message(b)
  puts "#{b} win the game!"
end

# board definition ra 
def draw_board(b) 
  system 'clear' # clears the board
  puts "[#{b[1]}|#{b[2]}|#{b[3]}]"  #assigns a value on each iteration within the hash that will passed on 
  puts "[#{b[4]}|#{b[5]}|#{b[6]}]"
  puts "[#{b[7]}|#{b[8]}|#{b[9]}]"
end

#board var assigned to init_board in order not to touch the original init_board
board = initialize_board
draw_board(board)
#call for the method to make it all work
begin
  player_picks_area(board)
  draw_board(board)
  computer_picks_area(board)
  draw_board(board)
  
  winner = winning_checker(board) # caller to method to return the winner
end until winner || nine_position_checker(board) #declares a winner or empty

  if winner
    winning_message(winner) # displays the winner
  else
    puts "Its a tie"
  end

    