require 'pry'

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

def computer_move!(brd)
  square = available_squares(brd).sample
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  available_squares(brd).empty?
end

def someone_won?(brd)
  false
end


board = initialize_board
display_board(board)

loop do
  player_move!(board)
  computer_move!(board)
  display_board(board)
  break if someone_won?(board) || board_full?(board)
end










