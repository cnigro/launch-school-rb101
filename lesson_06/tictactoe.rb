INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

def prompt(msg)
  puts "=> #{msg}"
end

def display_board(brd)
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def available_squares(brd)
  brd.keys.select { |n| brd[n] == INITIAL_MARKER }
end

def player_move!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{available_squares(brd).join(', ')}):"
    square = gets.chomp.to_i
    break if available_squares(brd).include?(square)
    prompt 'Sorry, that\'s not a valid choice.'
  end
  brd[square] = PLAYER_MARKER
end

board = initialize_board
display_board(board)

player_move!(board)
puts board.inspect
display_board(board)