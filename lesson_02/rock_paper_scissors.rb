VALID_CHOICES = %w(rock paper scissors lizard spock)
WINNING_MOVES = { 'rock' => %w(scissors lizard),
                  'paper' => %w(rock spock),
                  'scissors' => %w(paper lizard),
                  'lizard' => %w(paper spock),
                  'spock' => %w(rock scissors) }

def prompt(message)
  puts "=> #{message}"
end

def player_choice
  choice = gets.chomp
  case choice
  when 'r', 'R', 'rock', 'Rock'
    'rock'
  when 'p', 'P', 'paper', 'Paper'
    'paper'
  when 's', 'scissors', 'Scissors'
    'scissors'
  when 'l', 'L', 'lizard', 'Lizard'
    'lizard'
  when 'Spock', 'spock', 'S'
    'spock'
  end
end

def win?(first, second)
  WINNING_MOVES[first].include?(second)
end

def display_round_results(player, computer)
  if win?(player, computer)
    prompt("You won this round!")
  elsif win?(computer, player)
    prompt("Computer won this round!")
  else
    prompt("This round is a tie!")
  end
end

def display_final_results(score)
  winner = score[:player] == 5 ? 'You' : 'Computer'
  prompt("The winner in round #{score[:round]} is: #{winner}!")
end

def update_score(player, computer, score = {})
  if win?(player, computer)
    score[:player] += 1
  elsif win?(computer, player)
    score[:computer] += 1
  end
  score[:round] += 1
end

def display_score(score)
  prompt("Player: #{score[:player]}, Computer: #{score[:computer]}")
end

loop do
  score = { player: 0, computer: 0, round: 0 }
  loop do
    choice = nil
    loop do
      prompt("Choose one: #{VALID_CHOICES.join(', ')}")
      choice = player_choice

      if VALID_CHOICES.include?(choice)
        break
      else
        prompt("That's not a valid choice.")
      end
    end

    computer_choice = VALID_CHOICES.sample

    puts "You chose: #{choice}; Computer chose: #{computer_choice}"

    display_round_results(choice, computer_choice)
    update_score(choice, computer_choice, score)
    display_score(score)
    break if score[:player] == 5 || score[:computer] == 5
  end

  display_final_results(score)
  prompt('Do you want to play again?')
  answer = gets.chomp.downcase
  break unless answer.start_with?('y')
end

prompt("Thanks for kickin' it! Peace!")
