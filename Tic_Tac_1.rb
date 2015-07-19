
def initialize_board
  b = {}
  (1..9).each {|position| b[position] = ' '}
  b
end

def draw_board(b) 
  puts "[#{b[1]}|#{b[2]}|#{b[3]}]"
  puts "[#{b[4]}|#{b[5]}|#{b[6]}]"
  puts "[#{b[7]}|#{b[8]}|#{b[9]}]"
end


def empty_position(b)
  b.select {|k,v| v == " "}.keys
end
  
def player_picks_square(b)
  puts "please choose (1-9)"
      pos = gets.chomp.to_i
      b[pos] = 'X'
end

board = initialize_board

draw_board(board)
  player_picks_square(board)



