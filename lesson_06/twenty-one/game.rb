require 'pry'
require 'pry-byebug'

def prompt(msg)
  puts "=> #{msg}"
end

def generate_deck
  suits = ['Hearts', 'Diamonds', 'Clubs', 'Spades']
  values = ['2', '3', '4', '5', '6', '7', '8', '9', '10',
            'Jack', 'Queen', 'King', 'Ace']

  deck = suits.map do |suit|
    values.map do |value|
      [suit, value]
    end
  end
  (deck[0] + deck[1] + deck[2] + deck[3]).shuffle
end

def deal_cards(deck, quantity)
  deck.pop(quantity)
end

def display_cards(table, final=false)
  system 'clear'
  player = table[:player]
  dealer = table[:dealer]
  prompt("Player hand:")
  player.size.times do |n|
    puts "\t#{player[n][1]} of #{player[n][0]}"
  end
  puts "\tTotal: #{total(player)}"

  prompt("Dealer hand:")
  if final # Show the dealer's face-down card
    dealer.size.times do |n|
      puts "\t#{dealer[n][1]} of #{dealer[n][0]}"
    end
    puts "\tTotal: #{dealer}"
  else
    (dealer.size - 1).times do |n|
      puts "\t#{dealer[n + 1][1]} of #{dealer[n + 1][0]}"
    end
    puts "\tUnknown"
  end
end

def total(cards)
  values = cards.map { |card| card[1] }
  sum = 0
  values.each do |value|
    sum += case value
           when "Ace"
             11
           when ["Jack", "Queen", "King", "Ace"].include?(value)
             10
           else
             value.to_i
           end
  end

  values.select { |value| value == 'Ace' }.count.times do
    sum -= 10 if sum > 21
  end
  sum
end

def busted?(player)
  total(player) > 21
end

def won?(player)
  total(player) == 21
end

def can_hit?(player)
  total(player) < 17
end

def initialize_game
  table = {}
  table[:deck]   = generate_deck
  table[:player] = deal_cards(table[:deck], 2)
  table[:dealer] = deal_cards(table[:deck], 2)

  table
end

state = :player_turn
table = initialize_game

# Game Loop
loop do
  case state
  when :begin
    table = initialize_game
    state = :player_turn
  when :player_turn
    loop do
      display_cards(table)

      prompt("Hit or stay?")
      answer = gets.chomp

      if answer.casecmp?('stay')
        prompt("You chose to stay!")
        state = :dealer_turn
        break
      else
        table[:player] += deal_cards(table[:deck], 1)

        if busted?(table[:player])
          state = :player_bust
          break
        elsif won?(table[:player])
          state = :player_win
          break
        end
      end
    end
  when :player_bust
    prompt("Player busted!")
    prompt("Final Hand")
    display_cards(table, true)
    state = :game_end
  when :player_win
    prompt("You win!")
    prompt("Would you like to play again?")
    answer = gets.chomp
    state = :quit unless answer.casecmp?('y')
  when :dealer_turn
    loop do
      display_cards(table)

      if can_hit?(table[:dealer])
        table[:dealer] += deal_cards(table[:deck], 1)

        if busted?(table[:dealer])
          state = :dealer_bust
          break
        elsif won?(table[:dealer])
          state = :dealer_win
          break
        end
      else
        prompt("Dealer chose to stay!")
        state = :game_end
        break
      end
    end
  when :dealer_bust
    display_cards(table, true)
    prompt("Dealer busted!")
    state = :game_end
  when :dealer_win
    display_cards(table, true)
    prompt("Dealer wins! Better luck next time!")
    state = :game_end
  when :game_end
    if total(table[:dealer]) > total(table[:player])
      prompt("Dealer wins! Better luck next time!")
    else
      prompt("You win!")
    end
    prompt("Would you like to play again?")
    answer = gets.chomp
    state = answer.casecmp?('y') ? :begin : :quit
  when :quit
    prompt("Thanks for playing 21! Goodbye!")
    break
  end
end
