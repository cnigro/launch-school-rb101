require 'pry'
require 'pry-byebug'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]]              # diagonals

def prompt(msg)
  puts "=> #{msg}"
end

def joinor(arr, delimiter = ', ', conjunction = 'or')
  case arr.size
  when 0 then ''
  when 1 then arr[0]
  when 2 then arr.join(" #{conjunction} ")
  else
    arr[-1] = "#{conjunction} #{arr[-1]}"
    arr.join(delimiter)
  end
end

# rubocop:disable Metrics/AbcSize
def display_board(brd, scr)
  system 'clear'
  puts "Player is #{PLAYER_MARKER}, Computer is #{COMPUTER_MARKER}"
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
  puts "Player score: #{scr['Player']}, Computer score: #{scr['Computer']}"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def choose_starting_player
  prompt "Who will go first? ('computer' or 'player')"
  loop do
    answer = gets.chomp
    if answer.capitalize.start_with?('P')
      return 'Player'
    elsif answer.capitalize.start_with?('C')
      return 'Computer'
    else
      prompt "Not a valid selection. Choose 'player' or 'computer'"
    end
  end
end

def available_squares(brd)
  brd.keys.select { |n| brd[n] == INITIAL_MARKER }
end

def alternate_player(current_player)
  current_player == 'Player' ? 'Computer' : 'Player'
end

def take_turn!(board, current_player)
  if current_player == 'Player'
    player_move!(board)
  else
    computer_move!(board)
  end
end

def player_move!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(available_squares(brd))}):"
    square = gets.chomp.to_i
    break if available_squares(brd).include?(square)
    prompt 'Sorry, that\'s not a valid choice.'
  end
  brd[square] = PLAYER_MARKER
end

def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  else
    nil
  end
end

def computer_move!(brd)
  square = nil

  # Check for winning move
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, COMPUTER_MARKER)
    break if square
  end
  
  # If no winning move, defend against losing
  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, PLAYER_MARKER)
      break if square
    end
  end

  # Take the center square if available
  if !square
    square = 5 if available_squares(brd).include?(5)
    
  end

  # If not at risk of losing, choose randonly
  if !square
    square = available_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  available_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

scores = {'Player' => 0, 'Computer' => 0}
winner = ''

def increment_score(scores, plyr)
  scores[plyr] += 1
end

loop do
  board = initialize_board
  current_player = choose_starting_player

  loop do
    display_board(board, scores)
    take_turn!(board, current_player)
    current_player = alternate_player(current_player)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board, scores)

  if someone_won?(board)
    winner = detect_winner(board)
    prompt "#{winner} won!"
    increment_score(scores, winner)
  else
    prompt 'It\'s a tie!'
  end

  prompt "Get ready for the next round! Press any key to begin."
  answer = gets
  if scores.has_value?(5)
    prompt "The winner is #{winner}"
    break
  end
  # break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing! Goodbye!"
