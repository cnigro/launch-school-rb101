def generate_deck
  suits = ['Hearts', 'Diamonds', 'Clubs', 'Spades']
  values = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
  deck = suits.map do |suit|
    values.map do |value|
      [suit, value]
    end
  end
  deck = (deck[0] + deck[1] + deck[2] + deck[3]).shuffle
end

def deal_cards(deck, quantity)
  deck.pop(quantity)
end

def initialize_game
  table = {}
  table[:deck]   = generate_deck
  table[:player] = deal_cards(table[:deck], 2)
  table[:dealer] = deal_cards(table[:deck], 2)
  table
end

table = initialize_game