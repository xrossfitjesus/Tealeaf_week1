def initialize_board
  board = {}
  (1..9).each {|x| board[x] = ' '}
  board
end

def empty_position(x)
  x.keys.select {|pos| x[pos] == ' '}
end

p empty_position